part of 'tariff_bloc.dart';

@freezed
class TariffEvent with _$TariffEvent {
  const factory TariffEvent.getTariffs() = GetTariffs;
  const factory TariffEvent.searchTariffs({String? searchText}) = SearchTariffs;
}
