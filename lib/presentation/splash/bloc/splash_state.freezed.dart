// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

  Initial initial() {
    return const Initial();
  }

  AuthStatus authStatus(bool isUserAuthenticated) {
    return AuthStatus(
      isUserAuthenticated,
    );
  }
}

/// @nodoc
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUserAuthenticated) authStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUserAuthenticated)? authStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthStatus value) authStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthStatus value)? authStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SplashState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUserAuthenticated) authStatus,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUserAuthenticated)? authStatus,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthStatus value) authStatus,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthStatus value)? authStatus,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SplashState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res>;
  $Res call({bool isUserAuthenticated});
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(AuthStatus _value, $Res Function(AuthStatus) _then)
      : super(_value, (v) => _then(v as AuthStatus));

  @override
  AuthStatus get _value => super._value as AuthStatus;

  @override
  $Res call({
    Object? isUserAuthenticated = freezed,
  }) {
    return _then(AuthStatus(
      isUserAuthenticated == freezed
          ? _value.isUserAuthenticated
          : isUserAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStatus with DiagnosticableTreeMixin implements AuthStatus {
  const _$AuthStatus(this.isUserAuthenticated);

  @override
  final bool isUserAuthenticated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashState.authStatus(isUserAuthenticated: $isUserAuthenticated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SplashState.authStatus'))
      ..add(DiagnosticsProperty('isUserAuthenticated', isUserAuthenticated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStatus &&
            (identical(other.isUserAuthenticated, isUserAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isUserAuthenticated, isUserAuthenticated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isUserAuthenticated);

  @JsonKey(ignore: true)
  @override
  $AuthStatusCopyWith<AuthStatus> get copyWith =>
      _$AuthStatusCopyWithImpl<AuthStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUserAuthenticated) authStatus,
  }) {
    return authStatus(isUserAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUserAuthenticated)? authStatus,
    required TResult orElse(),
  }) {
    if (authStatus != null) {
      return authStatus(isUserAuthenticated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthStatus value) authStatus,
  }) {
    return authStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthStatus value)? authStatus,
    required TResult orElse(),
  }) {
    if (authStatus != null) {
      return authStatus(this);
    }
    return orElse();
  }
}

abstract class AuthStatus implements SplashState {
  const factory AuthStatus(bool isUserAuthenticated) = _$AuthStatus;

  bool get isUserAuthenticated => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStatusCopyWith<AuthStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
