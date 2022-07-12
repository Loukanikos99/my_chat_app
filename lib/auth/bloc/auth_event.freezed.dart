// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function() getProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthRegisterEvent value) register,
    required TResult Function(AuthGetProfileImageEvent value) getProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$AuthSignInEventCopyWith<$Res> {
  factory _$$AuthSignInEventCopyWith(
          _$AuthSignInEvent value, $Res Function(_$AuthSignInEvent) then) =
      __$$AuthSignInEventCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class __$$AuthSignInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthSignInEventCopyWith<$Res> {
  __$$AuthSignInEventCopyWithImpl(
      _$AuthSignInEvent _value, $Res Function(_$AuthSignInEvent) _then)
      : super(_value, (v) => _then(v as _$AuthSignInEvent));

  @override
  _$AuthSignInEvent get _value => super._value as _$AuthSignInEvent;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$AuthSignInEvent(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInEvent implements AuthSignInEvent {
  const _$AuthSignInEvent({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInEvent &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$AuthSignInEventCopyWith<_$AuthSignInEvent> get copyWith =>
      __$$AuthSignInEventCopyWithImpl<_$AuthSignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function() getProfileImage,
  }) {
    return signIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
  }) {
    return signIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthRegisterEvent value) register,
    required TResult Function(AuthGetProfileImageEvent value) getProfileImage,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AuthSignInEvent implements AuthEvent {
  const factory AuthSignInEvent(
      {required final String username,
      required final String password}) = _$AuthSignInEvent;

  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthSignInEventCopyWith<_$AuthSignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthGoogleSignInEventCopyWith<$Res> {
  factory _$$AuthGoogleSignInEventCopyWith(_$AuthGoogleSignInEvent value,
          $Res Function(_$AuthGoogleSignInEvent) then) =
      __$$AuthGoogleSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthGoogleSignInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthGoogleSignInEventCopyWith<$Res> {
  __$$AuthGoogleSignInEventCopyWithImpl(_$AuthGoogleSignInEvent _value,
      $Res Function(_$AuthGoogleSignInEvent) _then)
      : super(_value, (v) => _then(v as _$AuthGoogleSignInEvent));

  @override
  _$AuthGoogleSignInEvent get _value => super._value as _$AuthGoogleSignInEvent;
}

/// @nodoc

class _$AuthGoogleSignInEvent implements AuthGoogleSignInEvent {
  const _$AuthGoogleSignInEvent();

  @override
  String toString() {
    return 'AuthEvent.googleSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthGoogleSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function() getProfileImage,
  }) {
    return googleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
  }) {
    return googleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthRegisterEvent value) register,
    required TResult Function(AuthGetProfileImageEvent value) getProfileImage,
  }) {
    return googleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
  }) {
    return googleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(this);
    }
    return orElse();
  }
}

abstract class AuthGoogleSignInEvent implements AuthEvent {
  const factory AuthGoogleSignInEvent() = _$AuthGoogleSignInEvent;
}

/// @nodoc
abstract class _$$AuthSignOutEventCopyWith<$Res> {
  factory _$$AuthSignOutEventCopyWith(
          _$AuthSignOutEvent value, $Res Function(_$AuthSignOutEvent) then) =
      __$$AuthSignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthSignOutEventCopyWith<$Res> {
  __$$AuthSignOutEventCopyWithImpl(
      _$AuthSignOutEvent _value, $Res Function(_$AuthSignOutEvent) _then)
      : super(_value, (v) => _then(v as _$AuthSignOutEvent));

  @override
  _$AuthSignOutEvent get _value => super._value as _$AuthSignOutEvent;
}

/// @nodoc

class _$AuthSignOutEvent implements AuthSignOutEvent {
  const _$AuthSignOutEvent();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function() getProfileImage,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthRegisterEvent value) register,
    required TResult Function(AuthGetProfileImageEvent value) getProfileImage,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AuthSignOutEvent implements AuthEvent {
  const factory AuthSignOutEvent() = _$AuthSignOutEvent;
}

/// @nodoc
abstract class _$$AuthRegisterEventCopyWith<$Res> {
  factory _$$AuthRegisterEventCopyWith(
          _$AuthRegisterEvent value, $Res Function(_$AuthRegisterEvent) then) =
      __$$AuthRegisterEventCopyWithImpl<$Res>;
  $Res call({String email, String password, String name});
}

/// @nodoc
class __$$AuthRegisterEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthRegisterEventCopyWith<$Res> {
  __$$AuthRegisterEventCopyWithImpl(
      _$AuthRegisterEvent _value, $Res Function(_$AuthRegisterEvent) _then)
      : super(_value, (v) => _then(v as _$AuthRegisterEvent));

  @override
  _$AuthRegisterEvent get _value => super._value as _$AuthRegisterEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AuthRegisterEvent(
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
    ));
  }
}

/// @nodoc

class _$AuthRegisterEvent implements AuthRegisterEvent {
  const _$AuthRegisterEvent(
      {required this.email, required this.password, required this.name});

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.register(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegisterEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$AuthRegisterEventCopyWith<_$AuthRegisterEvent> get copyWith =>
      __$$AuthRegisterEventCopyWithImpl<_$AuthRegisterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function() getProfileImage,
  }) {
    return register(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
  }) {
    return register?.call(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthRegisterEvent value) register,
    required TResult Function(AuthGetProfileImageEvent value) getProfileImage,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class AuthRegisterEvent implements AuthEvent {
  const factory AuthRegisterEvent(
      {required final String email,
      required final String password,
      required final String name}) = _$AuthRegisterEvent;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthRegisterEventCopyWith<_$AuthRegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthGetProfileImageEventCopyWith<$Res> {
  factory _$$AuthGetProfileImageEventCopyWith(_$AuthGetProfileImageEvent value,
          $Res Function(_$AuthGetProfileImageEvent) then) =
      __$$AuthGetProfileImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthGetProfileImageEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthGetProfileImageEventCopyWith<$Res> {
  __$$AuthGetProfileImageEventCopyWithImpl(_$AuthGetProfileImageEvent _value,
      $Res Function(_$AuthGetProfileImageEvent) _then)
      : super(_value, (v) => _then(v as _$AuthGetProfileImageEvent));

  @override
  _$AuthGetProfileImageEvent get _value =>
      super._value as _$AuthGetProfileImageEvent;
}

/// @nodoc

class _$AuthGetProfileImageEvent implements AuthGetProfileImageEvent {
  const _$AuthGetProfileImageEvent();

  @override
  String toString() {
    return 'AuthEvent.getProfileImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthGetProfileImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function(String email, String password, String name)
        register,
    required TResult Function() getProfileImage,
  }) {
    return getProfileImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
  }) {
    return getProfileImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function(String email, String password, String name)? register,
    TResult Function()? getProfileImage,
    required TResult orElse(),
  }) {
    if (getProfileImage != null) {
      return getProfileImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthRegisterEvent value) register,
    required TResult Function(AuthGetProfileImageEvent value) getProfileImage,
  }) {
    return getProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
  }) {
    return getProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthRegisterEvent value)? register,
    TResult Function(AuthGetProfileImageEvent value)? getProfileImage,
    required TResult orElse(),
  }) {
    if (getProfileImage != null) {
      return getProfileImage(this);
    }
    return orElse();
  }
}

abstract class AuthGetProfileImageEvent implements AuthEvent {
  const factory AuthGetProfileImageEvent() = _$AuthGetProfileImageEvent;
}
