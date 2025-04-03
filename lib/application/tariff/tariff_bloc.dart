import 'package:bloc/bloc.dart';
import 'package:casl_fit/infrastructure/dto/models/tariff/tariff_model.dart';
import 'package:casl_fit/infrastructure/repository/tariff/tariff_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/common/enums/bloc_status.dart';

part 'tariff_bloc.freezed.dart';
part 'tariff_event.dart';
part 'tariff_state.dart';

class TariffBloc extends Bloc<TariffEvent, TariffState> {
  TariffBloc() : super(TariffState.initial()) {
    final repo = TariffRepository();
    on<GetTariffs>((event, emit) async {
      emit(state.copyWith(status: BlocStatus.loading));
      try {
        final response = await repo.getTariffs();
        if (response['status'] == true) {
          final List<TariffModel>? tariffs = response['result'].map<TariffModel>((item) => TariffModel.fromJson(item)).toList();
          if ((tariffs ?? []).isNotEmpty) {
            emit(state.copyWith(status: BlocStatus.success, tariffs: tariffs));
          } else {
            emit(state.copyWith(status: BlocStatus.empty));
          }
        } else {
          emit(state.copyWith(status: BlocStatus.error, errorMessage: response['error']['message']));
        }
      } catch (e) {
        emit(state.copyWith(status: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
      }
    });

    on<SearchTariffs>((event, emit) async {
      emit(state.copyWith(status: BlocStatus.loading));
      try {
        final response = await repo.getTariffs(searchText: event.searchText);
        if (response['status'] == true) {
          final List<TariffModel>? tariffs = response['result'].map<TariffModel>((item) => TariffModel.fromJson(item)).toList();
          if ((tariffs ?? []).isNotEmpty) {
            emit(state.copyWith(status: BlocStatus.success, tariffs: tariffs));
          } else {
            emit(state.copyWith(status: BlocStatus.empty));
          }
        } else {
          emit(state.copyWith(status: BlocStatus.error, errorMessage: response['error']['message']));
        }
      } catch (e) {
        emit(state.copyWith(status: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
      }
    });
  }
}
