// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyCountResponseImpl _$$DailyCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyCountResponseImpl(
      startWorkTime: json['startWorkTime'] as String?,
      endWorkTime: json['endWorkTime'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DailyCountResponseImplToJson(
        _$DailyCountResponseImpl instance) =>
    <String, dynamic>{
      'startWorkTime': instance.startWorkTime,
      'endWorkTime': instance.endWorkTime,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      week: json['week'] as String?,
      daysTotal: (json['days_total'] as num?)?.toInt(),
      daysWeek: json['days_week'] as String?,
      clientsTotal: (json['clients_total'] as num?)?.toInt(),
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'week': instance.week,
      'days_total': instance.daysTotal,
      'days_week': instance.daysWeek,
      'clients_total': instance.clientsTotal,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      from: json['from'] as String?,
      to: json['to'] as String?,
      clients: (json['clients'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'clients': instance.clients,
    };
