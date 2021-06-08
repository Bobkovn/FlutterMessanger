// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpDataTearOff {
  const _$SignUpDataTearOff();

  _SignUpData call(
      String email, String password, String name, String referenceName) {
    return _SignUpData(
      email,
      password,
      name,
      referenceName,
    );
  }
}

/// @nodoc
const $SignUpData = _$SignUpDataTearOff();

/// @nodoc
mixin _$SignUpData {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get referenceName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpDataCopyWith<SignUpData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpDataCopyWith<$Res> {
  factory $SignUpDataCopyWith(
          SignUpData value, $Res Function(SignUpData) then) =
      _$SignUpDataCopyWithImpl<$Res>;
  $Res call({String email, String password, String name, String referenceName});
}

/// @nodoc
class _$SignUpDataCopyWithImpl<$Res> implements $SignUpDataCopyWith<$Res> {
  _$SignUpDataCopyWithImpl(this._value, this._then);

  final SignUpData _value;
  // ignore: unused_field
  final $Res Function(SignUpData) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? referenceName = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      referenceName: referenceName == freezed
          ? _value.referenceName
          : referenceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignUpDataCopyWith<$Res> implements $SignUpDataCopyWith<$Res> {
  factory _$SignUpDataCopyWith(
          _SignUpData value, $Res Function(_SignUpData) then) =
      __$SignUpDataCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String name, String referenceName});
}

/// @nodoc
class __$SignUpDataCopyWithImpl<$Res> extends _$SignUpDataCopyWithImpl<$Res>
    implements _$SignUpDataCopyWith<$Res> {
  __$SignUpDataCopyWithImpl(
      _SignUpData _value, $Res Function(_SignUpData) _then)
      : super(_value, (v) => _then(v as _SignUpData));

  @override
  _SignUpData get _value => super._value as _SignUpData;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? referenceName = freezed,
  }) {
    return _then(_SignUpData(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      referenceName == freezed
          ? _value.referenceName
          : referenceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpData with DiagnosticableTreeMixin implements _SignUpData {
  const _$_SignUpData(this.email, this.password, this.name, this.referenceName);

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String referenceName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpData(email: $email, password: $password, name: $name, referenceName: $referenceName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpData'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('referenceName', referenceName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpData &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.referenceName, referenceName) ||
                const DeepCollectionEquality()
                    .equals(other.referenceName, referenceName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(referenceName);

  @JsonKey(ignore: true)
  @override
  _$SignUpDataCopyWith<_SignUpData> get copyWith =>
      __$SignUpDataCopyWithImpl<_SignUpData>(this, _$identity);
}

abstract class _SignUpData implements SignUpData {
  const factory _SignUpData(
          String email, String password, String name, String referenceName) =
      _$_SignUpData;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get referenceName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpDataCopyWith<_SignUpData> get copyWith =>
      throw _privateConstructorUsedError;
}
