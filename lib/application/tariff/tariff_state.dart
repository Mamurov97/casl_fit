part of 'tariff_bloc.dart';

@freezed
class TariffState with _$TariffState {
  const factory TariffState({
    required BlocStatus allTariffStatus,
    required BlocStatus currentTariffStatus,
    List<TariffModel>? tariffs,
    List<TariffModel>? currentTariff,
    String? errorMessage,
  }) = _TariffState;

  factory TariffState.initial() => const TariffState(allTariffStatus: BlocStatus.initial, currentTariffStatus: BlocStatus.initial);
}
