// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotificationCount,
    required TResult Function() getLiveUserCount,
    required TResult Function() getDailyUserCount,
    required TResult Function(int weekDay) getWeekDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotificationCount,
    TResult? Function()? getLiveUserCount,
    TResult? Function()? getDailyUserCount,
    TResult? Function(int weekDay)? getWeekDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotificationCount,
    TResult Function()? getLiveUserCount,
    TResult Function()? getDailyUserCount,
    TResult Function(int weekDay)? getWeekDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationCountEvent value)
        getNotificationCount,
    required TResult Function(GetLiveCountUserEvent value) getLiveUserCount,
    required TResult Function(GetDailyUserCountEvent value) getDailyUserCount,
    required TResult Function(GetWeekDayEvent value) getWeekDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult? Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult? Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult? Function(GetWeekDayEvent value)? getWeekDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult Function(GetWeekDayEvent value)? getWeekDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetNotificationCountEventImplCopyWith<$Res> {
  factory _$$GetNotificationCountEventImplCopyWith(
          _$GetNotificationCountEventImpl value,
          $Res Function(_$GetNotificationCountEventImpl) then) =
      __$$GetNotificationCountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotificationCountEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNotificationCountEventImpl>
    implements _$$GetNotificationCountEventImplCopyWith<$Res> {
  __$$GetNotificationCountEventImplCopyWithImpl(
      _$GetNotificationCountEventImpl _value,
      $Res Function(_$GetNotificationCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNotificationCountEventImpl implements GetNotificationCountEvent {
  const _$GetNotificationCountEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getNotificationCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationCountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotificationCount,
    required TResult Function() getLiveUserCount,
    required TResult Function() getDailyUserCount,
    required TResult Function(int weekDay) getWeekDay,
  }) {
    return getNotificationCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotificationCount,
    TResult? Function()? getLiveUserCount,
    TResult? Function()? getDailyUserCount,
    TResult? Function(int weekDay)? getWeekDay,
  }) {
    return getNotificationCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotificationCount,
    TResult Function()? getLiveUserCount,
    TResult Function()? getDailyUserCount,
    TResult Function(int weekDay)? getWeekDay,
    required TResult orElse(),
  }) {
    if (getNotificationCount != null) {
      return getNotificationCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationCountEvent value)
        getNotificationCount,
    required TResult Function(GetLiveCountUserEvent value) getLiveUserCount,
    required TResult Function(GetDailyUserCountEvent value) getDailyUserCount,
    required TResult Function(GetWeekDayEvent value) getWeekDay,
  }) {
    return getNotificationCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult? Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult? Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult? Function(GetWeekDayEvent value)? getWeekDay,
  }) {
    return getNotificationCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult Function(GetWeekDayEvent value)? getWeekDay,
    required TResult orElse(),
  }) {
    if (getNotificationCount != null) {
      return getNotificationCount(this);
    }
    return orElse();
  }
}

abstract class GetNotificationCountEvent implements HomeEvent {
  const factory GetNotificationCountEvent() = _$GetNotificationCountEventImpl;
}

/// @nodoc
abstract class _$$GetLiveCountUserEventImplCopyWith<$Res> {
  factory _$$GetLiveCountUserEventImplCopyWith(
          _$GetLiveCountUserEventImpl value,
          $Res Function(_$GetLiveCountUserEventImpl) then) =
      __$$GetLiveCountUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLiveCountUserEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetLiveCountUserEventImpl>
    implements _$$GetLiveCountUserEventImplCopyWith<$Res> {
  __$$GetLiveCountUserEventImplCopyWithImpl(_$GetLiveCountUserEventImpl _value,
      $Res Function(_$GetLiveCountUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetLiveCountUserEventImpl implements GetLiveCountUserEvent {
  const _$GetLiveCountUserEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getLiveUserCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLiveCountUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotificationCount,
    required TResult Function() getLiveUserCount,
    required TResult Function() getDailyUserCount,
    required TResult Function(int weekDay) getWeekDay,
  }) {
    return getLiveUserCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotificationCount,
    TResult? Function()? getLiveUserCount,
    TResult? Function()? getDailyUserCount,
    TResult? Function(int weekDay)? getWeekDay,
  }) {
    return getLiveUserCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotificationCount,
    TResult Function()? getLiveUserCount,
    TResult Function()? getDailyUserCount,
    TResult Function(int weekDay)? getWeekDay,
    required TResult orElse(),
  }) {
    if (getLiveUserCount != null) {
      return getLiveUserCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationCountEvent value)
        getNotificationCount,
    required TResult Function(GetLiveCountUserEvent value) getLiveUserCount,
    required TResult Function(GetDailyUserCountEvent value) getDailyUserCount,
    required TResult Function(GetWeekDayEvent value) getWeekDay,
  }) {
    return getLiveUserCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult? Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult? Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult? Function(GetWeekDayEvent value)? getWeekDay,
  }) {
    return getLiveUserCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult Function(GetWeekDayEvent value)? getWeekDay,
    required TResult orElse(),
  }) {
    if (getLiveUserCount != null) {
      return getLiveUserCount(this);
    }
    return orElse();
  }
}

abstract class GetLiveCountUserEvent implements HomeEvent {
  const factory GetLiveCountUserEvent() = _$GetLiveCountUserEventImpl;
}

/// @nodoc
abstract class _$$GetDailyUserCountEventImplCopyWith<$Res> {
  factory _$$GetDailyUserCountEventImplCopyWith(
          _$GetDailyUserCountEventImpl value,
          $Res Function(_$GetDailyUserCountEventImpl) then) =
      __$$GetDailyUserCountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDailyUserCountEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetDailyUserCountEventImpl>
    implements _$$GetDailyUserCountEventImplCopyWith<$Res> {
  __$$GetDailyUserCountEventImplCopyWithImpl(
      _$GetDailyUserCountEventImpl _value,
      $Res Function(_$GetDailyUserCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDailyUserCountEventImpl implements GetDailyUserCountEvent {
  const _$GetDailyUserCountEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getDailyUserCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyUserCountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotificationCount,
    required TResult Function() getLiveUserCount,
    required TResult Function() getDailyUserCount,
    required TResult Function(int weekDay) getWeekDay,
  }) {
    return getDailyUserCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotificationCount,
    TResult? Function()? getLiveUserCount,
    TResult? Function()? getDailyUserCount,
    TResult? Function(int weekDay)? getWeekDay,
  }) {
    return getDailyUserCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotificationCount,
    TResult Function()? getLiveUserCount,
    TResult Function()? getDailyUserCount,
    TResult Function(int weekDay)? getWeekDay,
    required TResult orElse(),
  }) {
    if (getDailyUserCount != null) {
      return getDailyUserCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationCountEvent value)
        getNotificationCount,
    required TResult Function(GetLiveCountUserEvent value) getLiveUserCount,
    required TResult Function(GetDailyUserCountEvent value) getDailyUserCount,
    required TResult Function(GetWeekDayEvent value) getWeekDay,
  }) {
    return getDailyUserCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult? Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult? Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult? Function(GetWeekDayEvent value)? getWeekDay,
  }) {
    return getDailyUserCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult Function(GetWeekDayEvent value)? getWeekDay,
    required TResult orElse(),
  }) {
    if (getDailyUserCount != null) {
      return getDailyUserCount(this);
    }
    return orElse();
  }
}

abstract class GetDailyUserCountEvent implements HomeEvent {
  const factory GetDailyUserCountEvent() = _$GetDailyUserCountEventImpl;
}

/// @nodoc
abstract class _$$GetWeekDayEventImplCopyWith<$Res> {
  factory _$$GetWeekDayEventImplCopyWith(_$GetWeekDayEventImpl value,
          $Res Function(_$GetWeekDayEventImpl) then) =
      __$$GetWeekDayEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int weekDay});
}

/// @nodoc
class __$$GetWeekDayEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetWeekDayEventImpl>
    implements _$$GetWeekDayEventImplCopyWith<$Res> {
  __$$GetWeekDayEventImplCopyWithImpl(
      _$GetWeekDayEventImpl _value, $Res Function(_$GetWeekDayEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDay = null,
  }) {
    return _then(_$GetWeekDayEventImpl(
      null == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetWeekDayEventImpl implements GetWeekDayEvent {
  const _$GetWeekDayEventImpl(this.weekDay);

  @override
  final int weekDay;

  @override
  String toString() {
    return 'HomeEvent.getWeekDay(weekDay: $weekDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeekDayEventImpl &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDay);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeekDayEventImplCopyWith<_$GetWeekDayEventImpl> get copyWith =>
      __$$GetWeekDayEventImplCopyWithImpl<_$GetWeekDayEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotificationCount,
    required TResult Function() getLiveUserCount,
    required TResult Function() getDailyUserCount,
    required TResult Function(int weekDay) getWeekDay,
  }) {
    return getWeekDay(weekDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotificationCount,
    TResult? Function()? getLiveUserCount,
    TResult? Function()? getDailyUserCount,
    TResult? Function(int weekDay)? getWeekDay,
  }) {
    return getWeekDay?.call(weekDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotificationCount,
    TResult Function()? getLiveUserCount,
    TResult Function()? getDailyUserCount,
    TResult Function(int weekDay)? getWeekDay,
    required TResult orElse(),
  }) {
    if (getWeekDay != null) {
      return getWeekDay(weekDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationCountEvent value)
        getNotificationCount,
    required TResult Function(GetLiveCountUserEvent value) getLiveUserCount,
    required TResult Function(GetDailyUserCountEvent value) getDailyUserCount,
    required TResult Function(GetWeekDayEvent value) getWeekDay,
  }) {
    return getWeekDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult? Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult? Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult? Function(GetWeekDayEvent value)? getWeekDay,
  }) {
    return getWeekDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationCountEvent value)? getNotificationCount,
    TResult Function(GetLiveCountUserEvent value)? getLiveUserCount,
    TResult Function(GetDailyUserCountEvent value)? getDailyUserCount,
    TResult Function(GetWeekDayEvent value)? getWeekDay,
    required TResult orElse(),
  }) {
    if (getWeekDay != null) {
      return getWeekDay(this);
    }
    return orElse();
  }
}

abstract class GetWeekDayEvent implements HomeEvent {
  const factory GetWeekDayEvent(final int weekDay) = _$GetWeekDayEventImpl;

  int get weekDay;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWeekDayEventImplCopyWith<_$GetWeekDayEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  BlocStatus get status => throw _privateConstructorUsedError;
  BlocStatus get dailyUserCountStatus => throw _privateConstructorUsedError;
  int get weekDay => throw _privateConstructorUsedError;
  DailyCountResponse? get dailyCountResponse =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  int? get liveUserCount => throw _privateConstructorUsedError;
  int? get notificationCount => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {BlocStatus status,
      BlocStatus dailyUserCountStatus,
      int weekDay,
      DailyCountResponse? dailyCountResponse,
      String? errorMessage,
      int? liveUserCount,
      int? notificationCount});

  $DailyCountResponseCopyWith<$Res>? get dailyCountResponse;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dailyUserCountStatus = null,
    Object? weekDay = null,
    Object? dailyCountResponse = freezed,
    Object? errorMessage = freezed,
    Object? liveUserCount = freezed,
    Object? notificationCount = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      dailyUserCountStatus: null == dailyUserCountStatus
          ? _value.dailyUserCountStatus
          : dailyUserCountStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      weekDay: null == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as int,
      dailyCountResponse: freezed == dailyCountResponse
          ? _value.dailyCountResponse
          : dailyCountResponse // ignore: cast_nullable_to_non_nullable
              as DailyCountResponse?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      liveUserCount: freezed == liveUserCount
          ? _value.liveUserCount
          : liveUserCount // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationCount: freezed == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyCountResponseCopyWith<$Res>? get dailyCountResponse {
    if (_value.dailyCountResponse == null) {
      return null;
    }

    return $DailyCountResponseCopyWith<$Res>(_value.dailyCountResponse!,
        (value) {
      return _then(_value.copyWith(dailyCountResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      BlocStatus dailyUserCountStatus,
      int weekDay,
      DailyCountResponse? dailyCountResponse,
      String? errorMessage,
      int? liveUserCount,
      int? notificationCount});

  @override
  $DailyCountResponseCopyWith<$Res>? get dailyCountResponse;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dailyUserCountStatus = null,
    Object? weekDay = null,
    Object? dailyCountResponse = freezed,
    Object? errorMessage = freezed,
    Object? liveUserCount = freezed,
    Object? notificationCount = freezed,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      dailyUserCountStatus: null == dailyUserCountStatus
          ? _value.dailyUserCountStatus
          : dailyUserCountStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      weekDay: null == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as int,
      dailyCountResponse: freezed == dailyCountResponse
          ? _value.dailyCountResponse
          : dailyCountResponse // ignore: cast_nullable_to_non_nullable
              as DailyCountResponse?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      liveUserCount: freezed == liveUserCount
          ? _value.liveUserCount
          : liveUserCount // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationCount: freezed == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.status,
      required this.dailyUserCountStatus,
      required this.weekDay,
      this.dailyCountResponse,
      this.errorMessage,
      this.liveUserCount,
      this.notificationCount});

  @override
  final BlocStatus status;
  @override
  final BlocStatus dailyUserCountStatus;
  @override
  final int weekDay;
  @override
  final DailyCountResponse? dailyCountResponse;
  @override
  final String? errorMessage;
  @override
  final int? liveUserCount;
  @override
  final int? notificationCount;

  @override
  String toString() {
    return 'HomeState(status: $status, dailyUserCountStatus: $dailyUserCountStatus, weekDay: $weekDay, dailyCountResponse: $dailyCountResponse, errorMessage: $errorMessage, liveUserCount: $liveUserCount, notificationCount: $notificationCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dailyUserCountStatus, dailyUserCountStatus) ||
                other.dailyUserCountStatus == dailyUserCountStatus) &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay) &&
            (identical(other.dailyCountResponse, dailyCountResponse) ||
                other.dailyCountResponse == dailyCountResponse) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.liveUserCount, liveUserCount) ||
                other.liveUserCount == liveUserCount) &&
            (identical(other.notificationCount, notificationCount) ||
                other.notificationCount == notificationCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      dailyUserCountStatus,
      weekDay,
      dailyCountResponse,
      errorMessage,
      liveUserCount,
      notificationCount);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final BlocStatus status,
      required final BlocStatus dailyUserCountStatus,
      required final int weekDay,
      final DailyCountResponse? dailyCountResponse,
      final String? errorMessage,
      final int? liveUserCount,
      final int? notificationCount}) = _$HomeStateImpl;

  @override
  BlocStatus get status;
  @override
  BlocStatus get dailyUserCountStatus;
  @override
  int get weekDay;
  @override
  DailyCountResponse? get dailyCountResponse;
  @override
  String? get errorMessage;
  @override
  int? get liveUserCount;
  @override
  int? get notificationCount;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
