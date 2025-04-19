// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_count_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyCountResponse _$DailyCountResponseFromJson(Map<String, dynamic> json) {
  return _DailyCountResponse.fromJson(json);
}

/// @nodoc
mixin _$DailyCountResponse {
  String? get startWorkTime => throw _privateConstructorUsedError;
  String? get endWorkTime => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  /// Serializes this DailyCountResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyCountResponseCopyWith<DailyCountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCountResponseCopyWith<$Res> {
  factory $DailyCountResponseCopyWith(
          DailyCountResponse value, $Res Function(DailyCountResponse) then) =
      _$DailyCountResponseCopyWithImpl<$Res, DailyCountResponse>;
  @useResult
  $Res call({String? startWorkTime, String? endWorkTime, List<Data>? data});
}

/// @nodoc
class _$DailyCountResponseCopyWithImpl<$Res, $Val extends DailyCountResponse>
    implements $DailyCountResponseCopyWith<$Res> {
  _$DailyCountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startWorkTime = freezed,
    Object? endWorkTime = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      startWorkTime: freezed == startWorkTime
          ? _value.startWorkTime
          : startWorkTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endWorkTime: freezed == endWorkTime
          ? _value.endWorkTime
          : endWorkTime // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyCountResponseImplCopyWith<$Res>
    implements $DailyCountResponseCopyWith<$Res> {
  factory _$$DailyCountResponseImplCopyWith(_$DailyCountResponseImpl value,
          $Res Function(_$DailyCountResponseImpl) then) =
      __$$DailyCountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? startWorkTime, String? endWorkTime, List<Data>? data});
}

/// @nodoc
class __$$DailyCountResponseImplCopyWithImpl<$Res>
    extends _$DailyCountResponseCopyWithImpl<$Res, _$DailyCountResponseImpl>
    implements _$$DailyCountResponseImplCopyWith<$Res> {
  __$$DailyCountResponseImplCopyWithImpl(_$DailyCountResponseImpl _value,
      $Res Function(_$DailyCountResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startWorkTime = freezed,
    Object? endWorkTime = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DailyCountResponseImpl(
      startWorkTime: freezed == startWorkTime
          ? _value.startWorkTime
          : startWorkTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endWorkTime: freezed == endWorkTime
          ? _value.endWorkTime
          : endWorkTime // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyCountResponseImpl implements _DailyCountResponse {
  const _$DailyCountResponseImpl(
      {this.startWorkTime, this.endWorkTime, final List<Data>? data})
      : _data = data;

  factory _$DailyCountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyCountResponseImplFromJson(json);

  @override
  final String? startWorkTime;
  @override
  final String? endWorkTime;
  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DailyCountResponse(startWorkTime: $startWorkTime, endWorkTime: $endWorkTime, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyCountResponseImpl &&
            (identical(other.startWorkTime, startWorkTime) ||
                other.startWorkTime == startWorkTime) &&
            (identical(other.endWorkTime, endWorkTime) ||
                other.endWorkTime == endWorkTime) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startWorkTime, endWorkTime,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of DailyCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyCountResponseImplCopyWith<_$DailyCountResponseImpl> get copyWith =>
      __$$DailyCountResponseImplCopyWithImpl<_$DailyCountResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyCountResponseImplToJson(
      this,
    );
  }
}

abstract class _DailyCountResponse implements DailyCountResponse {
  const factory _DailyCountResponse(
      {final String? startWorkTime,
      final String? endWorkTime,
      final List<Data>? data}) = _$DailyCountResponseImpl;

  factory _DailyCountResponse.fromJson(Map<String, dynamic> json) =
      _$DailyCountResponseImpl.fromJson;

  @override
  String? get startWorkTime;
  @override
  String? get endWorkTime;
  @override
  List<Data>? get data;

  /// Create a copy of DailyCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyCountResponseImplCopyWith<_$DailyCountResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get week => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_total')
  int? get daysTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_week')
  String? get daysWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'clients_total')
  int? get clientsTotal => throw _privateConstructorUsedError;
  List<Result>? get result => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? week,
      @JsonKey(name: 'days_total') int? daysTotal,
      @JsonKey(name: 'days_week') String? daysWeek,
      @JsonKey(name: 'clients_total') int? clientsTotal,
      List<Result>? result});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = freezed,
    Object? daysTotal = freezed,
    Object? daysWeek = freezed,
    Object? clientsTotal = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String?,
      daysTotal: freezed == daysTotal
          ? _value.daysTotal
          : daysTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      daysWeek: freezed == daysWeek
          ? _value.daysWeek
          : daysWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      clientsTotal: freezed == clientsTotal
          ? _value.clientsTotal
          : clientsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? week,
      @JsonKey(name: 'days_total') int? daysTotal,
      @JsonKey(name: 'days_week') String? daysWeek,
      @JsonKey(name: 'clients_total') int? clientsTotal,
      List<Result>? result});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = freezed,
    Object? daysTotal = freezed,
    Object? daysWeek = freezed,
    Object? clientsTotal = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DataImpl(
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String?,
      daysTotal: freezed == daysTotal
          ? _value.daysTotal
          : daysTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      daysWeek: freezed == daysWeek
          ? _value.daysWeek
          : daysWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      clientsTotal: freezed == clientsTotal
          ? _value.clientsTotal
          : clientsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.week,
      @JsonKey(name: 'days_total') this.daysTotal,
      @JsonKey(name: 'days_week') this.daysWeek,
      @JsonKey(name: 'clients_total') this.clientsTotal,
      final List<Result>? result})
      : _result = result;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? week;
  @override
  @JsonKey(name: 'days_total')
  final int? daysTotal;
  @override
  @JsonKey(name: 'days_week')
  final String? daysWeek;
  @override
  @JsonKey(name: 'clients_total')
  final int? clientsTotal;
  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(week: $week, daysTotal: $daysTotal, daysWeek: $daysWeek, clientsTotal: $clientsTotal, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.daysTotal, daysTotal) ||
                other.daysTotal == daysTotal) &&
            (identical(other.daysWeek, daysWeek) ||
                other.daysWeek == daysWeek) &&
            (identical(other.clientsTotal, clientsTotal) ||
                other.clientsTotal == clientsTotal) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, week, daysTotal, daysWeek,
      clientsTotal, const DeepCollectionEquality().hash(_result));

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? week,
      @JsonKey(name: 'days_total') final int? daysTotal,
      @JsonKey(name: 'days_week') final String? daysWeek,
      @JsonKey(name: 'clients_total') final int? clientsTotal,
      final List<Result>? result}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get week;
  @override
  @JsonKey(name: 'days_total')
  int? get daysTotal;
  @override
  @JsonKey(name: 'days_week')
  String? get daysWeek;
  @override
  @JsonKey(name: 'clients_total')
  int? get clientsTotal;
  @override
  List<Result>? get result;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  int? get clients => throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({String? from, String? to, int? clients});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? clients = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      clients: freezed == clients
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? from, String? to, int? clients});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? clients = freezed,
  }) {
    return _then(_$ResultImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      clients: freezed == clients
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.from, this.to, this.clients});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String? from;
  @override
  final String? to;
  @override
  final int? clients;

  @override
  String toString() {
    return 'Result(from: $from, to: $to, clients: $clients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.clients, clients) || other.clients == clients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, clients);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final String? from,
      final String? to,
      final int? clients}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String? get from;
  @override
  String? get to;
  @override
  int? get clients;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
