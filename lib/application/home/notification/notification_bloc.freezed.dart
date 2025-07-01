// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {
  int get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int status) getNotifications,
    required TResult Function(NotificationModel notification, int status)
        showNotification,
    required TResult Function(int status) readAllNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status)? getNotifications,
    TResult? Function(NotificationModel notification, int status)?
        showNotification,
    TResult? Function(int status)? readAllNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status)? getNotifications,
    TResult Function(NotificationModel notification, int status)?
        showNotification,
    TResult Function(int status)? readAllNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(ShowNotification value) showNotification,
    required TResult Function(ReadAllNotifications value) readAllNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(ShowNotification value)? showNotification,
    TResult? Function(ReadAllNotifications value)? readAllNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(ShowNotification value)? showNotification,
    TResult Function(ReadAllNotifications value)? readAllNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationEventCopyWith<NotificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
  @useResult
  $Res call({int status});
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNotificationsImplCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$$GetNotificationsImplCopyWith(_$GetNotificationsImpl value,
          $Res Function(_$GetNotificationsImpl) then) =
      __$$GetNotificationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status});
}

/// @nodoc
class __$$GetNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$GetNotificationsImpl>
    implements _$$GetNotificationsImplCopyWith<$Res> {
  __$$GetNotificationsImplCopyWithImpl(_$GetNotificationsImpl _value,
      $Res Function(_$GetNotificationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$GetNotificationsImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetNotificationsImpl implements GetNotifications {
  const _$GetNotificationsImpl({required this.status});

  @override
  final int status;

  @override
  String toString() {
    return 'NotificationEvent.getNotifications(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      __$$GetNotificationsImplCopyWithImpl<_$GetNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int status) getNotifications,
    required TResult Function(NotificationModel notification, int status)
        showNotification,
    required TResult Function(int status) readAllNotifications,
  }) {
    return getNotifications(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status)? getNotifications,
    TResult? Function(NotificationModel notification, int status)?
        showNotification,
    TResult? Function(int status)? readAllNotifications,
  }) {
    return getNotifications?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status)? getNotifications,
    TResult Function(NotificationModel notification, int status)?
        showNotification,
    TResult Function(int status)? readAllNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(ShowNotification value) showNotification,
    required TResult Function(ReadAllNotifications value) readAllNotifications,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(ShowNotification value)? showNotification,
    TResult? Function(ReadAllNotifications value)? readAllNotifications,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(ShowNotification value)? showNotification,
    TResult Function(ReadAllNotifications value)? readAllNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class GetNotifications implements NotificationEvent {
  const factory GetNotifications({required final int status}) =
      _$GetNotificationsImpl;

  @override
  int get status;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowNotificationImplCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$$ShowNotificationImplCopyWith(_$ShowNotificationImpl value,
          $Res Function(_$ShowNotificationImpl) then) =
      __$$ShowNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotificationModel notification, int status});
}

/// @nodoc
class __$$ShowNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ShowNotificationImpl>
    implements _$$ShowNotificationImplCopyWith<$Res> {
  __$$ShowNotificationImplCopyWithImpl(_$ShowNotificationImpl _value,
      $Res Function(_$ShowNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? status = null,
  }) {
    return _then(_$ShowNotificationImpl(
      null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationModel,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShowNotificationImpl implements ShowNotification {
  const _$ShowNotificationImpl(this.notification, this.status);

  @override
  final NotificationModel notification;
  @override
  final int status;

  @override
  String toString() {
    return 'NotificationEvent.showNotification(notification: $notification, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowNotificationImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification, status);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowNotificationImplCopyWith<_$ShowNotificationImpl> get copyWith =>
      __$$ShowNotificationImplCopyWithImpl<_$ShowNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int status) getNotifications,
    required TResult Function(NotificationModel notification, int status)
        showNotification,
    required TResult Function(int status) readAllNotifications,
  }) {
    return showNotification(notification, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status)? getNotifications,
    TResult? Function(NotificationModel notification, int status)?
        showNotification,
    TResult? Function(int status)? readAllNotifications,
  }) {
    return showNotification?.call(notification, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status)? getNotifications,
    TResult Function(NotificationModel notification, int status)?
        showNotification,
    TResult Function(int status)? readAllNotifications,
    required TResult orElse(),
  }) {
    if (showNotification != null) {
      return showNotification(notification, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(ShowNotification value) showNotification,
    required TResult Function(ReadAllNotifications value) readAllNotifications,
  }) {
    return showNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(ShowNotification value)? showNotification,
    TResult? Function(ReadAllNotifications value)? readAllNotifications,
  }) {
    return showNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(ShowNotification value)? showNotification,
    TResult Function(ReadAllNotifications value)? readAllNotifications,
    required TResult orElse(),
  }) {
    if (showNotification != null) {
      return showNotification(this);
    }
    return orElse();
  }
}

abstract class ShowNotification implements NotificationEvent {
  const factory ShowNotification(
          final NotificationModel notification, final int status) =
      _$ShowNotificationImpl;

  NotificationModel get notification;
  @override
  int get status;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowNotificationImplCopyWith<_$ShowNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadAllNotificationsImplCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$$ReadAllNotificationsImplCopyWith(_$ReadAllNotificationsImpl value,
          $Res Function(_$ReadAllNotificationsImpl) then) =
      __$$ReadAllNotificationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status});
}

/// @nodoc
class __$$ReadAllNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ReadAllNotificationsImpl>
    implements _$$ReadAllNotificationsImplCopyWith<$Res> {
  __$$ReadAllNotificationsImplCopyWithImpl(_$ReadAllNotificationsImpl _value,
      $Res Function(_$ReadAllNotificationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ReadAllNotificationsImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReadAllNotificationsImpl implements ReadAllNotifications {
  const _$ReadAllNotificationsImpl({required this.status});

  @override
  final int status;

  @override
  String toString() {
    return 'NotificationEvent.readAllNotifications(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadAllNotificationsImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadAllNotificationsImplCopyWith<_$ReadAllNotificationsImpl>
      get copyWith =>
          __$$ReadAllNotificationsImplCopyWithImpl<_$ReadAllNotificationsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int status) getNotifications,
    required TResult Function(NotificationModel notification, int status)
        showNotification,
    required TResult Function(int status) readAllNotifications,
  }) {
    return readAllNotifications(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status)? getNotifications,
    TResult? Function(NotificationModel notification, int status)?
        showNotification,
    TResult? Function(int status)? readAllNotifications,
  }) {
    return readAllNotifications?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status)? getNotifications,
    TResult Function(NotificationModel notification, int status)?
        showNotification,
    TResult Function(int status)? readAllNotifications,
    required TResult orElse(),
  }) {
    if (readAllNotifications != null) {
      return readAllNotifications(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(ShowNotification value) showNotification,
    required TResult Function(ReadAllNotifications value) readAllNotifications,
  }) {
    return readAllNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(ShowNotification value)? showNotification,
    TResult? Function(ReadAllNotifications value)? readAllNotifications,
  }) {
    return readAllNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(ShowNotification value)? showNotification,
    TResult Function(ReadAllNotifications value)? readAllNotifications,
    required TResult orElse(),
  }) {
    if (readAllNotifications != null) {
      return readAllNotifications(this);
    }
    return orElse();
  }
}

abstract class ReadAllNotifications implements NotificationEvent {
  const factory ReadAllNotifications({required final int status}) =
      _$ReadAllNotificationsImpl;

  @override
  int get status;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadAllNotificationsImplCopyWith<_$ReadAllNotificationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  BlocStatus get statusGet => throw _privateConstructorUsedError;
  BlocStatus get statusShow => throw _privateConstructorUsedError;
  BlocStatus get statusReadAll => throw _privateConstructorUsedError;
  List<NotificationModel> get newsNotifications =>
      throw _privateConstructorUsedError;
  List<NotificationModel> get personalNotifications =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {BlocStatus statusGet,
      BlocStatus statusShow,
      BlocStatus statusReadAll,
      List<NotificationModel> newsNotifications,
      List<NotificationModel> personalNotifications,
      String? errorMessage});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusGet = null,
    Object? statusShow = null,
    Object? statusReadAll = null,
    Object? newsNotifications = null,
    Object? personalNotifications = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      statusGet: null == statusGet
          ? _value.statusGet
          : statusGet // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      statusShow: null == statusShow
          ? _value.statusShow
          : statusShow // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      statusReadAll: null == statusReadAll
          ? _value.statusReadAll
          : statusReadAll // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      newsNotifications: null == newsNotifications
          ? _value.newsNotifications
          : newsNotifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      personalNotifications: null == personalNotifications
          ? _value.personalNotifications
          : personalNotifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus statusGet,
      BlocStatus statusShow,
      BlocStatus statusReadAll,
      List<NotificationModel> newsNotifications,
      List<NotificationModel> personalNotifications,
      String? errorMessage});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusGet = null,
    Object? statusShow = null,
    Object? statusReadAll = null,
    Object? newsNotifications = null,
    Object? personalNotifications = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$NotificationStateImpl(
      statusGet: null == statusGet
          ? _value.statusGet
          : statusGet // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      statusShow: null == statusShow
          ? _value.statusShow
          : statusShow // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      statusReadAll: null == statusReadAll
          ? _value.statusReadAll
          : statusReadAll // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      newsNotifications: null == newsNotifications
          ? _value._newsNotifications
          : newsNotifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      personalNotifications: null == personalNotifications
          ? _value._personalNotifications
          : personalNotifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  const _$NotificationStateImpl(
      {this.statusGet = BlocStatus.initial,
      this.statusShow = BlocStatus.initial,
      this.statusReadAll = BlocStatus.initial,
      final List<NotificationModel> newsNotifications = const [],
      final List<NotificationModel> personalNotifications = const [],
      this.errorMessage})
      : _newsNotifications = newsNotifications,
        _personalNotifications = personalNotifications;

  @override
  @JsonKey()
  final BlocStatus statusGet;
  @override
  @JsonKey()
  final BlocStatus statusShow;
  @override
  @JsonKey()
  final BlocStatus statusReadAll;
  final List<NotificationModel> _newsNotifications;
  @override
  @JsonKey()
  List<NotificationModel> get newsNotifications {
    if (_newsNotifications is EqualUnmodifiableListView)
      return _newsNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsNotifications);
  }

  final List<NotificationModel> _personalNotifications;
  @override
  @JsonKey()
  List<NotificationModel> get personalNotifications {
    if (_personalNotifications is EqualUnmodifiableListView)
      return _personalNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personalNotifications);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NotificationState(statusGet: $statusGet, statusShow: $statusShow, statusReadAll: $statusReadAll, newsNotifications: $newsNotifications, personalNotifications: $personalNotifications, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            (identical(other.statusGet, statusGet) ||
                other.statusGet == statusGet) &&
            (identical(other.statusShow, statusShow) ||
                other.statusShow == statusShow) &&
            (identical(other.statusReadAll, statusReadAll) ||
                other.statusReadAll == statusReadAll) &&
            const DeepCollectionEquality()
                .equals(other._newsNotifications, _newsNotifications) &&
            const DeepCollectionEquality()
                .equals(other._personalNotifications, _personalNotifications) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      statusGet,
      statusShow,
      statusReadAll,
      const DeepCollectionEquality().hash(_newsNotifications),
      const DeepCollectionEquality().hash(_personalNotifications),
      errorMessage);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {final BlocStatus statusGet,
      final BlocStatus statusShow,
      final BlocStatus statusReadAll,
      final List<NotificationModel> newsNotifications,
      final List<NotificationModel> personalNotifications,
      final String? errorMessage}) = _$NotificationStateImpl;

  @override
  BlocStatus get statusGet;
  @override
  BlocStatus get statusShow;
  @override
  BlocStatus get statusReadAll;
  @override
  List<NotificationModel> get newsNotifications;
  @override
  List<NotificationModel> get personalNotifications;
  @override
  String? get errorMessage;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
