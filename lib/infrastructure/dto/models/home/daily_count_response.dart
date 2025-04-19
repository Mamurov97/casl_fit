import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_count_response.freezed.dart';
part 'daily_count_response.g.dart';

@freezed
class DailyCountResponse with _$DailyCountResponse {
  const factory DailyCountResponse({
    String? startWorkTime,
    String? endWorkTime,
    List<Data>? data,
  }) = _DailyCountResponse;

  factory DailyCountResponse.fromJson(Map<String, dynamic> json) =>
      _$DailyCountResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? week,
    @JsonKey(name: 'days_total') int? daysTotal,
    @JsonKey(name: 'days_week') String? daysWeek,
    @JsonKey(name: 'clients_total') int? clientsTotal,
    List<Result>? result,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? from,
    String? to,
    int? clients,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
