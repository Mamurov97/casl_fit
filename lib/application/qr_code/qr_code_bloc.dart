import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:casl_fit/infrastructure/dto/models/home/qr_code/response/qr_code_response.dart';
import 'package:casl_fit/infrastructure/repository/home/qr_code/qr_code_repository.dart';
import 'package:dio/dio.dart';
import '../../../domain/common/enums/bloc_status.dart';

part 'qr_code_event.dart';

part 'qr_code_state.dart';

class QrCodeBloc extends Bloc<QrCodeEvent, QrCodeState> {
  QrCodeBloc() : super(QrCodeState()) {
    final repo = QrCodeRepository();
    Timer? timer;

    on<GetQrCodeTokenEvent>((event, emit) async {
      emit(state.copyWith(status: BlocStatus.loading));
      try {
        final Map<String, dynamic> data = await repo.getQrCodeToke();

        if (data["status"]) {
          int second = data["result"]["expiry_second"];
          add(StartQrCodeTimerEvent(second));
          emit(state.copyWith(
              status: BlocStatus.success, remainingSeconds: second, isExpired: false, qrCodeResponse: QrCodeResponse(qrCodeToken: data["result"]["qr_code_token"], expirySecond: second)));
        } else {
          emit(state.copyWith(status: BlocStatus.error, isExpired: true));
        }
      } on DioException catch (e) {
        emit(state.copyWith(status: BlocStatus.error, errorMessage: e.toString(), isExpired: true));
      }
    });

    on<StartQrCodeTimerEvent>((event, emit) {
      timer?.cancel();
      int seconds = event.seconds;
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (seconds > 0) {
          seconds--;
          add(UpdateQrCodeTimerEvent(remainingSeconds: seconds));
        }
      });
    });
    on<UpdateQrCodeTimerEvent>((event, emit) {
      if (event.remainingSeconds > 0) {
        emit(state.copyWith(remainingSeconds: event.remainingSeconds));
      } else {
        timer?.cancel();
        if (!isClosed) {
          emit(state.copyWith(isExpired: true));
        } // add(GetQrCodeTokenEvent());
      }
    });
  }
}
