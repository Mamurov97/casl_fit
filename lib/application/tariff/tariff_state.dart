part of 'tariff_bloc.dart';

@freezed
class TariffState with _$TariffState {
  const factory TariffState({
    required BlocStatus status,
    List<TariffModel>? tariffs,
    String? errorMessage,
  }) = _TariffState;

  factory TariffState.initial() => const TariffState(status: BlocStatus.initial);
}
