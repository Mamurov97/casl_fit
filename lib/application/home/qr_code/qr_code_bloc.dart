import 'package:bloc/bloc.dart';
import 'package:casl_fit/infrastructure/dto/models/home/qr_code/response/qr_code_response.dart';
import 'package:casl_fit/infrastructure/repository/home/qr_code/qr_code_repository.dart';
import 'package:dio/dio.dart';
import '../../../utils/utils.dart';

part 'qr_code_event.dart';

part 'qr_code_state.dart';

class QrCodeBloc extends Bloc<QrCodeEvent, QrCodeState> {
  QrCodeBloc() : super(QrCodeState()) {
    final repo = QrCodeRepository();

    on<GetQrCodeTokenEvent>((event, emit) async {
      emit(state.copyWith(status: Status.loading));
      try {
        final Map<String, dynamic> data = await repo.getQrCodeToke();

        if (data["status"]) {
          emit(state.copyWith(status: Status.success, qrCodeResponse: QrCodeResponse(qrCodeToken: data["result"]["qr_code_token"])));
        } else {
          emit(state.copyWith(status: Status.error));
        }
      } on DioException catch (e) {
        emit(state.copyWith(status: Status.error, errorMessage: e.toString()));
      }
    });
  }
}
