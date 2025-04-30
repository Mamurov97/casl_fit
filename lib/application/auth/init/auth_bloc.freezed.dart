// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() sendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(String otpCode) register,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeOtpVerifyStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function(String name, String birthday) setRegisterData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? sendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(String otpCode)? register,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeOtpVerifyStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function(String name, String birthday)? setRegisterData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? sendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(String otpCode)? register,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeOtpVerifyStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function(String name, String birthday)? setRegisterData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeOtpVerifyStatusEvent value)
        changeOtpVerifyStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(SetRegisterData value) setRegisterData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(SetRegisterData value)? setRegisterData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(SetRegisterData value)? setRegisterData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckPhoneNumberImplCopyWith<$Res> {
  factory _$$CheckPhoneNumberImplCopyWith(_$CheckPhoneNumberImpl value,
          $Res Function(_$CheckPhoneNumberImpl) then) =
      __$$CheckPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$CheckPhoneNumberImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckPhoneNumberImpl>
    implements _$$CheckPhoneNumberImplCopyWith<$Res> {
  __$$CheckPhoneNumberImplCopyWithImpl(_$CheckPhoneNumberImpl _value,
      $Res Function(_$CheckPhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$CheckPhoneNumberImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckPhoneNumberImpl implements CheckPhoneNumber {
  const _$CheckPhoneNumberImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.checkPhoneNumber(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPhoneNumberImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPhoneNumberImplCopyWith<_$CheckPhoneNumberImpl> get copyWith =>
      __$$CheckPhoneNumberImplCopyWithImpl<_$CheckPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() sendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(String otpCode) register,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeOtpVerifyStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function(String name, String birthday) setRegisterData,
  }) {
    return checkPhoneNumber(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? sendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(String otpCode)? register,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeOtpVerifyStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function(String name, String birthday)? setRegisterData,
  }) {
    return checkPhoneNumber?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? sendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(String otpCode)? register,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeOtpVerifyStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function(String name, String birthday)? setRegisterData,
    required TResult orElse(),
  }) {
    if (checkPhoneNumber != null) {
      return checkPhoneNumber(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeOtpVerifyStatusEvent value)
        changeOtpVerifyStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(SetRegisterData value) setRegisterData,
  }) {
    return checkPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(SetRegisterData value)? setRegisterData,
  }) {
    return checkPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(SetRegisterData value)? setRegisterData,
    required TResult orElse(),
  }) {
    if (checkPhoneNumber != null) {
      return checkPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class CheckPhoneNumber implements AuthEvent {
  const factory CheckPhoneNumber({required final String phone}) =
      _$CheckPhoneNumberImpl;

  String get phone;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckPhoneNumberImplCopyWith<_$CheckPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOtpEventImplCopyWith<$Res> {
  factory _$$SendOtpEventImplCopyWith(
          _$SendOtpEventImpl value, $Res Function(_$SendOtpEventImpl) then) =
      __$$SendOtpEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendOtpEventImpl>
    implements _$$SendOtpEventImplCopyWith<$Res> {
  __$$SendOtpEventImplCopyWithImpl(
      _$SendOtpEventImpl _value, $Res Function(_$SendOtpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendOtpEventImpl implements SendOtpEvent {
  const _$SendOtpEventImpl();

  @override
  String toString() {
    return 'AuthEvent.sendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOtpEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() sendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(String otpCode) register,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeOtpVerifyStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function(String name, String birthday) setRegisterData,
  }) {
    return sendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? sendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(String otpCode)? register,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeOtpVerifyStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function(String name, String birthday)? setRegisterData,
  }) {
    return sendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? sendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(String otpCode)? register,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeOtpVerifyStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function(String name, String birthday)? setRegisterData,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeOtpVerifyStatusEvent value)
        changeOtpVerifyStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(SetRegisterData value) setRegisterData,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(SetRegisterData value)? setRegisterData,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(SetRegisterData value)? setRegisterData,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class SendOtpEvent implements AuthEvent {
  const factory SendOtpEvent() = _$SendOtpEventImpl;
}

/// @nodoc
abstract class _$$VerifyOtpEventImplCopyWith<$Res> {
  factory _$$VerifyOtpEventImplCopyWith(_$VerifyOtpEventImpl value,
          $Res Function(_$VerifyOtpEventImpl) then) =
      __$$VerifyOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$VerifyOtpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpEventImpl>
    implements _$$VerifyOtpEventImplCopyWith<$Res> {
  __$$VerifyOtpEventImplCopyWithImpl(
      _$VerifyOtpEventImpl _value, $Res Function(_$VerifyOtpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$VerifyOtpEventImpl(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpEventImpl implements VerifyOtpEvent {
  const _$VerifyOtpEventImpl({required this.otpCode});

  @override
  final String otpCode;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpEventImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpEventImplCopyWith<_$VerifyOtpEventImpl> get copyWith =>
      __$$VerifyOtpEventImplCopyWithImpl<_$VerifyOtpEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() sendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(String otpCode) register,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeOtpVerifyStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function(String name, String birthday) setRegisterData,
  }) {
    return verifyOtp(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? sendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(String otpCode)? register,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeOtpVerifyStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function(String name, String birthday)? setRegisterData,
  }) {
    return verifyOtp?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? sendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(String otpCode)? register,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeOtpVerifyStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function(String name, String birthday)? setRegisterData,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeOtpVerifyStatusEvent value)
        changeOtpVerifyStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(SetRegisterData value) setRegisterData,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(SetRegisterData value)? setRegisterData,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(SetRegisterData value)? setRegisterData,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpEvent implements AuthEvent {
  const factory VerifyOtpEvent({required final String otpCode}) =
      _$VerifyOtpEventImpl;

  String get otpCode;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpEventImplCopyWith<_$VerifyOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterEventImplCopyWith<$Res> {
  factory _$$RegisterEventImplCopyWith(
          _$RegisterEventImpl value, $Res Function(_$RegisterEventImpl) then) =
      __$$RegisterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$RegisterEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterEventImpl>
    implements _$$RegisterEventImplCopyWith<$Res> {
  __$$RegisterEventImplCopyWithImpl(
      _$RegisterEventImpl _value, $Res Function(_$RegisterEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$RegisterEventImpl(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterEventImpl implements RegisterEvent {
  const _$RegisterEventImpl({required this.otpCode});

  @override
  final String otpCode;

  @override
  String toString() {
    return 'AuthEvent.register(otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterEventImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      __$$RegisterEventImplCopyWithImpl<_$RegisterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() sendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(String otpCode) register,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeOtpVerifyStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function(String name, String birthday) setRegisterData,
  }) {
    return register(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? sendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(String otpCode)? register,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeOtpVerifyStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function(String name, String birthday)? setRegisterData,
  }) {
    return register?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? sendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(String otpCode)? register,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeOtpVerifyStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function(String name, String birthday)? setRegisterData,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeOtpVerifyStatusEvent value)
        changeOtpVerifyStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(SetRegisterData value) setRegisterData,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(SetRegisterData value)? setRegisterData,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(SetRegisterData value)? setRegisterData,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterEvent implements AuthEvent {
  const factory RegisterEvent({required final String otpCode}) =
      _$RegisterEventImpl;

  String get otpCode;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAuthStatusEventImplCopyWith<$Res> {
  factory _$$ChangeAuthStatusEventImplCopyWith(
          _$ChangeAuthStatusEventImpl value,
          $Res Function(_$ChangeAuthStatusEventImpl) then) =
      __$$ChangeAuthStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeAuthStatusEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeAuthStatusEventImpl>
    implements _$$ChangeAuthStatusEventImplCopyWith<$Res> {
  __$$ChangeAuthStatusEventImplCopyWithImpl(_$ChangeAuthStatusEventImpl _value,
      $Res Function(_$ChangeAuthStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeAuthStatusEventImpl implements ChangeAuthStatusEvent {
  const _$ChangeAuthStatusEventImpl();

  @override
  String toString() {
    return 'AuthEvent.changeAuthStatusEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAuthStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() sendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(String otpCode) register,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeOtpVerifyStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function(String name, String birthday) setRegisterData,
  }) {
    return changeAuthStatusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? sendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(String otpCode)? register,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeOtpVerifyStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function(String name, String birthday)? setRegisterData,
  }) {
    return changeAuthStatusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? sendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(String otpCode)? register,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeOtpVerifyStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function(String name, String birthday)? setRegisterData,
    required TResult orElse(),
  }) {
    if (changeAuthStatusEvent != null) {
      return changeAuthStatusEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeOtpVerifyStatusEvent value)
        changeOtpVerifyStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(SetRegisterData value) setRegisterData,
  }) {
    return changeAuthStatusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(SetRegisterData value)? setRegisterData,
  }) {
    return changeAuthStatusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(SetRegisterData value)? setRegisterData,
    required TResult orElse(),
  }) {
    if (changeAuthStatusEvent != null) {
      return changeAuthStatusEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeAuthStatusEvent implements AuthEvent {
  const factory ChangeAuthStatusEvent() = _$ChangeAuthStatusEventImpl;
}

/// @nodoc
abstract class _$$ChangeOtpVerifyStatusEventImplCopyWith<$Res> {
  factory _$$ChangeOtpVerifyStatusEventImplCopyWith(
          _$ChangeOtpVerifyStatusEventImpl value,
          $Res Function(_$ChangeOtpVerifyStatusEventImpl) then) =
      __$$ChangeOtpVerifyStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeOtpVerifyStatusEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeOtpVerifyStatusEventImpl>
    implements _$$ChangeOtpVerifyStatusEventImplCopyWith<$Res> {
  __$$ChangeOtpVerifyStatusEventImplCopyWithImpl(
      _$ChangeOtpVerifyStatusEventImpl _value,
      $Res Function(_$ChangeOtpVerifyStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeOtpVerifyStatusEventImpl implements ChangeOtpVerifyStatusEvent {
  const _$ChangeOtpVerifyStatusEventImpl();

  @override
  String toString() {
    return 'AuthEvent.changeOtpVerifyStatusEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOtpVerifyStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() sendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(String otpCode) register,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeOtpVerifyStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function(String name, String birthday) setRegisterData,
  }) {
    return changeOtpVerifyStatusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? sendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(String otpCode)? register,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeOtpVerifyStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function(String name, String birthday)? setRegisterData,
  }) {
    return changeOtpVerifyStatusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? sendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(String otpCode)? register,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeOtpVerifyStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function(String name, String birthday)? setRegisterData,
    required TResult orElse(),
  }) {
    if (changeOtpVerifyStatusEvent != null) {
      return changeOtpVerifyStatusEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeOtpVerifyStatusEvent value)
        changeOtpVerifyStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(SetRegisterData value) setRegisterData,
  }) {
    return changeOtpVerifyStatusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(SetRegisterData value)? setRegisterData,
  }) {
    return changeOtpVerifyStatusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(SetRegisterData value)? setRegisterData,
    required TResult orElse(),
  }) {
    if (changeOtpVerifyStatusEvent != null) {
      return changeOtpVerifyStatusEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeOtpVerifyStatusEvent implements AuthEvent {
  const factory ChangeOtpVerifyStatusEvent() = _$ChangeOtpVerifyStatusEventImpl;
}

/// @nodoc
abstract class _$$ChangeOtpStatusEventImplCopyWith<$Res> {
  factory _$$ChangeOtpStatusEventImplCopyWith(_$ChangeOtpStatusEventImpl value,
          $Res Function(_$ChangeOtpStatusEventImpl) then) =
      __$$ChangeOtpStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeOtpStatusEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeOtpStatusEventImpl>
    implements _$$ChangeOtpStatusEventImplCopyWith<$Res> {
  __$$ChangeOtpStatusEventImplCopyWithImpl(_$ChangeOtpStatusEventImpl _value,
      $Res Function(_$ChangeOtpStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeOtpStatusEventImpl implements ChangeOtpStatusEvent {
  const _$ChangeOtpStatusEventImpl();

  @override
  String toString() {
    return 'AuthEvent.changeOtpStatusEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOtpStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() sendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(String otpCode) register,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeOtpVerifyStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function(String name, String birthday) setRegisterData,
  }) {
    return changeOtpStatusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? sendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(String otpCode)? register,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeOtpVerifyStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function(String name, String birthday)? setRegisterData,
  }) {
    return changeOtpStatusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? sendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(String otpCode)? register,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeOtpVerifyStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function(String name, String birthday)? setRegisterData,
    required TResult orElse(),
  }) {
    if (changeOtpStatusEvent != null) {
      return changeOtpStatusEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeOtpVerifyStatusEvent value)
        changeOtpVerifyStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(SetRegisterData value) setRegisterData,
  }) {
    return changeOtpStatusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(SetRegisterData value)? setRegisterData,
  }) {
    return changeOtpStatusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(SetRegisterData value)? setRegisterData,
    required TResult orElse(),
  }) {
    if (changeOtpStatusEvent != null) {
      return changeOtpStatusEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeOtpStatusEvent implements AuthEvent {
  const factory ChangeOtpStatusEvent() = _$ChangeOtpStatusEventImpl;
}

/// @nodoc
abstract class _$$SetRegisterDataImplCopyWith<$Res> {
  factory _$$SetRegisterDataImplCopyWith(_$SetRegisterDataImpl value,
          $Res Function(_$SetRegisterDataImpl) then) =
      __$$SetRegisterDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String birthday});
}

/// @nodoc
class __$$SetRegisterDataImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetRegisterDataImpl>
    implements _$$SetRegisterDataImplCopyWith<$Res> {
  __$$SetRegisterDataImplCopyWithImpl(
      _$SetRegisterDataImpl _value, $Res Function(_$SetRegisterDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthday = null,
  }) {
    return _then(_$SetRegisterDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetRegisterDataImpl implements SetRegisterData {
  const _$SetRegisterDataImpl({required this.name, required this.birthday});

  @override
  final String name;
  @override
  final String birthday;

  @override
  String toString() {
    return 'AuthEvent.setRegisterData(name: $name, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRegisterDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, birthday);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRegisterDataImplCopyWith<_$SetRegisterDataImpl> get copyWith =>
      __$$SetRegisterDataImplCopyWithImpl<_$SetRegisterDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() sendOtp,
    required TResult Function(String otpCode) verifyOtp,
    required TResult Function(String otpCode) register,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeOtpVerifyStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function(String name, String birthday) setRegisterData,
  }) {
    return setRegisterData(name, birthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? sendOtp,
    TResult? Function(String otpCode)? verifyOtp,
    TResult? Function(String otpCode)? register,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeOtpVerifyStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function(String name, String birthday)? setRegisterData,
  }) {
    return setRegisterData?.call(name, birthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? sendOtp,
    TResult Function(String otpCode)? verifyOtp,
    TResult Function(String otpCode)? register,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeOtpVerifyStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function(String name, String birthday)? setRegisterData,
    required TResult orElse(),
  }) {
    if (setRegisterData != null) {
      return setRegisterData(name, birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeOtpVerifyStatusEvent value)
        changeOtpVerifyStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(SetRegisterData value) setRegisterData,
  }) {
    return setRegisterData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(SetRegisterData value)? setRegisterData,
  }) {
    return setRegisterData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeOtpVerifyStatusEvent value)?
        changeOtpVerifyStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(SetRegisterData value)? setRegisterData,
    required TResult orElse(),
  }) {
    if (setRegisterData != null) {
      return setRegisterData(this);
    }
    return orElse();
  }
}

abstract class SetRegisterData implements AuthEvent {
  const factory SetRegisterData(
      {required final String name,
      required final String birthday}) = _$SetRegisterDataImpl;

  String get name;
  String get birthday;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetRegisterDataImplCopyWith<_$SetRegisterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  VerifyPhoneNumberStatus get authStatus => throw _privateConstructorUsedError;
  BlocStatus get otpStatus => throw _privateConstructorUsedError;
  BlocStatus get registerStatus => throw _privateConstructorUsedError;
  BlocStatus get otpVerifyStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String? phoneNumber,
      String? fullName,
      String? birthday,
      VerifyPhoneNumberStatus authStatus,
      BlocStatus otpStatus,
      BlocStatus registerStatus,
      BlocStatus otpVerifyStatus,
      String? errorMessage});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? fullName = freezed,
    Object? birthday = freezed,
    Object? authStatus = null,
    Object? otpStatus = null,
    Object? registerStatus = null,
    Object? otpVerifyStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as VerifyPhoneNumberStatus,
      otpStatus: null == otpStatus
          ? _value.otpStatus
          : otpStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      otpVerifyStatus: null == otpVerifyStatus
          ? _value.otpVerifyStatus
          : otpVerifyStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phoneNumber,
      String? fullName,
      String? birthday,
      VerifyPhoneNumberStatus authStatus,
      BlocStatus otpStatus,
      BlocStatus registerStatus,
      BlocStatus otpVerifyStatus,
      String? errorMessage});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? fullName = freezed,
    Object? birthday = freezed,
    Object? authStatus = null,
    Object? otpStatus = null,
    Object? registerStatus = null,
    Object? otpVerifyStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AuthStateImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as VerifyPhoneNumberStatus,
      otpStatus: null == otpStatus
          ? _value.otpStatus
          : otpStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      otpVerifyStatus: null == otpVerifyStatus
          ? _value.otpVerifyStatus
          : otpVerifyStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.phoneNumber,
      this.fullName,
      this.birthday,
      required this.authStatus,
      required this.otpStatus,
      required this.registerStatus,
      required this.otpVerifyStatus,
      this.errorMessage});

  @override
  final String? phoneNumber;
  @override
  final String? fullName;
  @override
  final String? birthday;
  @override
  final VerifyPhoneNumberStatus authStatus;
  @override
  final BlocStatus otpStatus;
  @override
  final BlocStatus registerStatus;
  @override
  final BlocStatus otpVerifyStatus;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthState(phoneNumber: $phoneNumber, fullName: $fullName, birthday: $birthday, authStatus: $authStatus, otpStatus: $otpStatus, registerStatus: $registerStatus, otpVerifyStatus: $otpVerifyStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.otpStatus, otpStatus) ||
                other.otpStatus == otpStatus) &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.otpVerifyStatus, otpVerifyStatus) ||
                other.otpVerifyStatus == otpVerifyStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, fullName, birthday,
      authStatus, otpStatus, registerStatus, otpVerifyStatus, errorMessage);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final String? phoneNumber,
      final String? fullName,
      final String? birthday,
      required final VerifyPhoneNumberStatus authStatus,
      required final BlocStatus otpStatus,
      required final BlocStatus registerStatus,
      required final BlocStatus otpVerifyStatus,
      final String? errorMessage}) = _$AuthStateImpl;

  @override
  String? get phoneNumber;
  @override
  String? get fullName;
  @override
  String? get birthday;
  @override
  VerifyPhoneNumberStatus get authStatus;
  @override
  BlocStatus get otpStatus;
  @override
  BlocStatus get registerStatus;
  @override
  BlocStatus get otpVerifyStatus;
  @override
  String? get errorMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
