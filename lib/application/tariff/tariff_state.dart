part of 'tariff_bloc.dart';

@freezed
class TariffState with _$TariffState {
  const factory TariffState({
    required BlocStatus allTariffStatus,
    required BlocStatus currentTariffStatus,
    required BlocStatus categoryTariffStatus,
    required bool hasLoadedTariffs,
    List<TariffModel>? tariffs,
    List<Data>? localTariffList,
    List<CategoryTariffModel>? categoryTariffs,
    List<TariffModel>? currentTariff,
    String? errorMessage,
  }) = _TariffState;

  factory TariffState.initial() => const TariffState(hasLoadedTariffs:false,categoryTariffStatus: BlocStatus.initial,allTariffStatus: BlocStatus.initial, currentTariffStatus: BlocStatus.initial);
}
