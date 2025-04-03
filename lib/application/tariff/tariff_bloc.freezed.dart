// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tariff_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TariffEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTariffs,
    required TResult Function(String? searchText) searchTariffs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTariffs,
    TResult? Function(String? searchText)? searchTariffs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTariffs,
    TResult Function(String? searchText)? searchTariffs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTariffs value) getTariffs,
    required TResult Function(SearchTariffs value) searchTariffs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTariffs value)? getTariffs,
    TResult? Function(SearchTariffs value)? searchTariffs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTariffs value)? getTariffs,
    TResult Function(SearchTariffs value)? searchTariffs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TariffEventCopyWith<$Res> {
  factory $TariffEventCopyWith(
          TariffEvent value, $Res Function(TariffEvent) then) =
      _$TariffEventCopyWithImpl<$Res, TariffEvent>;
}

/// @nodoc
class _$TariffEventCopyWithImpl<$Res, $Val extends TariffEvent>
    implements $TariffEventCopyWith<$Res> {
  _$TariffEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TariffEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTariffsImplCopyWith<$Res> {
  factory _$$GetTariffsImplCopyWith(
          _$GetTariffsImpl value, $Res Function(_$GetTariffsImpl) then) =
      __$$GetTariffsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTariffsImplCopyWithImpl<$Res>
    extends _$TariffEventCopyWithImpl<$Res, _$GetTariffsImpl>
    implements _$$GetTariffsImplCopyWith<$Res> {
  __$$GetTariffsImplCopyWithImpl(
      _$GetTariffsImpl _value, $Res Function(_$GetTariffsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TariffEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTariffsImpl implements GetTariffs {
  const _$GetTariffsImpl();

  @override
  String toString() {
    return 'TariffEvent.getTariffs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTariffsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTariffs,
    required TResult Function(String? searchText) searchTariffs,
  }) {
    return getTariffs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTariffs,
    TResult? Function(String? searchText)? searchTariffs,
  }) {
    return getTariffs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTariffs,
    TResult Function(String? searchText)? searchTariffs,
    required TResult orElse(),
  }) {
    if (getTariffs != null) {
      return getTariffs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTariffs value) getTariffs,
    required TResult Function(SearchTariffs value) searchTariffs,
  }) {
    return getTariffs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTariffs value)? getTariffs,
    TResult? Function(SearchTariffs value)? searchTariffs,
  }) {
    return getTariffs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTariffs value)? getTariffs,
    TResult Function(SearchTariffs value)? searchTariffs,
    required TResult orElse(),
  }) {
    if (getTariffs != null) {
      return getTariffs(this);
    }
    return orElse();
  }
}

abstract class GetTariffs implements TariffEvent {
  const factory GetTariffs() = _$GetTariffsImpl;
}

/// @nodoc
abstract class _$$SearchTariffsImplCopyWith<$Res> {
  factory _$$SearchTariffsImplCopyWith(
          _$SearchTariffsImpl value, $Res Function(_$SearchTariffsImpl) then) =
      __$$SearchTariffsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchText});
}

/// @nodoc
class __$$SearchTariffsImplCopyWithImpl<$Res>
    extends _$TariffEventCopyWithImpl<$Res, _$SearchTariffsImpl>
    implements _$$SearchTariffsImplCopyWith<$Res> {
  __$$SearchTariffsImplCopyWithImpl(
      _$SearchTariffsImpl _value, $Res Function(_$SearchTariffsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TariffEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = freezed,
  }) {
    return _then(_$SearchTariffsImpl(
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchTariffsImpl implements SearchTariffs {
  const _$SearchTariffsImpl({this.searchText});

  @override
  final String? searchText;

  @override
  String toString() {
    return 'TariffEvent.searchTariffs(searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTariffsImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  /// Create a copy of TariffEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTariffsImplCopyWith<_$SearchTariffsImpl> get copyWith =>
      __$$SearchTariffsImplCopyWithImpl<_$SearchTariffsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTariffs,
    required TResult Function(String? searchText) searchTariffs,
  }) {
    return searchTariffs(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTariffs,
    TResult? Function(String? searchText)? searchTariffs,
  }) {
    return searchTariffs?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTariffs,
    TResult Function(String? searchText)? searchTariffs,
    required TResult orElse(),
  }) {
    if (searchTariffs != null) {
      return searchTariffs(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTariffs value) getTariffs,
    required TResult Function(SearchTariffs value) searchTariffs,
  }) {
    return searchTariffs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTariffs value)? getTariffs,
    TResult? Function(SearchTariffs value)? searchTariffs,
  }) {
    return searchTariffs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTariffs value)? getTariffs,
    TResult Function(SearchTariffs value)? searchTariffs,
    required TResult orElse(),
  }) {
    if (searchTariffs != null) {
      return searchTariffs(this);
    }
    return orElse();
  }
}

abstract class SearchTariffs implements TariffEvent {
  const factory SearchTariffs({final String? searchText}) = _$SearchTariffsImpl;

  String? get searchText;

  /// Create a copy of TariffEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTariffsImplCopyWith<_$SearchTariffsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TariffState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<TariffModel>? get tariffs => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of TariffState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TariffStateCopyWith<TariffState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TariffStateCopyWith<$Res> {
  factory $TariffStateCopyWith(
          TariffState value, $Res Function(TariffState) then) =
      _$TariffStateCopyWithImpl<$Res, TariffState>;
  @useResult
  $Res call(
      {BlocStatus status, List<TariffModel>? tariffs, String? errorMessage});
}

/// @nodoc
class _$TariffStateCopyWithImpl<$Res, $Val extends TariffState>
    implements $TariffStateCopyWith<$Res> {
  _$TariffStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TariffState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tariffs = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      tariffs: freezed == tariffs
          ? _value.tariffs
          : tariffs // ignore: cast_nullable_to_non_nullable
              as List<TariffModel>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TariffStateImplCopyWith<$Res>
    implements $TariffStateCopyWith<$Res> {
  factory _$$TariffStateImplCopyWith(
          _$TariffStateImpl value, $Res Function(_$TariffStateImpl) then) =
      __$$TariffStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status, List<TariffModel>? tariffs, String? errorMessage});
}

/// @nodoc
class __$$TariffStateImplCopyWithImpl<$Res>
    extends _$TariffStateCopyWithImpl<$Res, _$TariffStateImpl>
    implements _$$TariffStateImplCopyWith<$Res> {
  __$$TariffStateImplCopyWithImpl(
      _$TariffStateImpl _value, $Res Function(_$TariffStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TariffState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tariffs = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TariffStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      tariffs: freezed == tariffs
          ? _value._tariffs
          : tariffs // ignore: cast_nullable_to_non_nullable
              as List<TariffModel>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TariffStateImpl implements _TariffState {
  const _$TariffStateImpl(
      {required this.status,
      final List<TariffModel>? tariffs,
      this.errorMessage})
      : _tariffs = tariffs;

  @override
  final BlocStatus status;
  final List<TariffModel>? _tariffs;
  @override
  List<TariffModel>? get tariffs {
    final value = _tariffs;
    if (value == null) return null;
    if (_tariffs is EqualUnmodifiableListView) return _tariffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TariffState(status: $status, tariffs: $tariffs, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TariffStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tariffs, _tariffs) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_tariffs), errorMessage);

  /// Create a copy of TariffState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TariffStateImplCopyWith<_$TariffStateImpl> get copyWith =>
      __$$TariffStateImplCopyWithImpl<_$TariffStateImpl>(this, _$identity);
}

abstract class _TariffState implements TariffState {
  const factory _TariffState(
      {required final BlocStatus status,
      final List<TariffModel>? tariffs,
      final String? errorMessage}) = _$TariffStateImpl;

  @override
  BlocStatus get status;
  @override
  List<TariffModel>? get tariffs;
  @override
  String? get errorMessage;

  /// Create a copy of TariffState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TariffStateImplCopyWith<_$TariffStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
