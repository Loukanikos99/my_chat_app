// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) failure,
    required TResult Function(ChatClientServiceFailures serviceFailure)
        serviceFailure,
    required TResult Function(ChatClientRepositoryFailures repositoryFailure)
        repositoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMsg)? failure,
    TResult Function(ChatClientServiceFailures serviceFailure)? serviceFailure,
    TResult Function(ChatClientRepositoryFailures repositoryFailure)?
        repositoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? failure,
    TResult Function(ChatClientServiceFailures serviceFailure)? serviceFailure,
    TResult Function(ChatClientRepositoryFailures repositoryFailure)?
        repositoryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthServiceFailure value) serviceFailure,
    required TResult Function(AuthRepositoryFailure value) repositoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthServiceFailure value)? serviceFailure,
    TResult Function(AuthRepositoryFailure value)? repositoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthServiceFailure value)? serviceFailure,
    TResult Function(AuthRepositoryFailure value)? repositoryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailuresCopyWith<$Res> {
  factory $AuthFailuresCopyWith(
          AuthFailures value, $Res Function(AuthFailures) then) =
      _$AuthFailuresCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailuresCopyWithImpl<$Res> implements $AuthFailuresCopyWith<$Res> {
  _$AuthFailuresCopyWithImpl(this._value, this._then);

  final AuthFailures _value;
  // ignore: unused_field
  final $Res Function(AuthFailures) _then;
}

/// @nodoc
abstract class _$$AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureCopyWith(
          _$AuthFailure value, $Res Function(_$AuthFailure) then) =
      __$$AuthFailureCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class __$$AuthFailureCopyWithImpl<$Res> extends _$AuthFailuresCopyWithImpl<$Res>
    implements _$$AuthFailureCopyWith<$Res> {
  __$$AuthFailureCopyWithImpl(
      _$AuthFailure _value, $Res Function(_$AuthFailure) _then)
      : super(_value, (v) => _then(v as _$AuthFailure));

  @override
  _$AuthFailure get _value => super._value as _$AuthFailure;

  @override
  $Res call({
    Object? errorMsg = freezed,
  }) {
    return _then(_$AuthFailure(
      errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailure implements AuthFailure {
  const _$AuthFailure(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'AuthFailures.failure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailure &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$$AuthFailureCopyWith<_$AuthFailure> get copyWith =>
      __$$AuthFailureCopyWithImpl<_$AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) failure,
    required TResult Function(ChatClientServiceFailures serviceFailure)
        serviceFailure,
    required TResult Function(ChatClientRepositoryFailures repositoryFailure)
        repositoryFailure,
  }) {
    return failure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMsg)? failure,
    TResult Function(ChatClientServiceFailures serviceFailure)? serviceFailure,
    TResult Function(ChatClientRepositoryFailures repositoryFailure)?
        repositoryFailure,
  }) {
    return failure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? failure,
    TResult Function(ChatClientServiceFailures serviceFailure)? serviceFailure,
    TResult Function(ChatClientRepositoryFailures repositoryFailure)?
        repositoryFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthServiceFailure value) serviceFailure,
    required TResult Function(AuthRepositoryFailure value) repositoryFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthServiceFailure value)? serviceFailure,
    TResult Function(AuthRepositoryFailure value)? repositoryFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthServiceFailure value)? serviceFailure,
    TResult Function(AuthRepositoryFailure value)? repositoryFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements AuthFailures {
  const factory AuthFailure(final String errorMsg) = _$AuthFailure;

  String get errorMsg => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthFailureCopyWith<_$AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthServiceFailureCopyWith<$Res> {
  factory _$$AuthServiceFailureCopyWith(_$AuthServiceFailure value,
          $Res Function(_$AuthServiceFailure) then) =
      __$$AuthServiceFailureCopyWithImpl<$Res>;
  $Res call({ChatClientServiceFailures serviceFailure});

  $ChatClientServiceFailuresCopyWith<$Res> get serviceFailure;
}

/// @nodoc
class __$$AuthServiceFailureCopyWithImpl<$Res>
    extends _$AuthFailuresCopyWithImpl<$Res>
    implements _$$AuthServiceFailureCopyWith<$Res> {
  __$$AuthServiceFailureCopyWithImpl(
      _$AuthServiceFailure _value, $Res Function(_$AuthServiceFailure) _then)
      : super(_value, (v) => _then(v as _$AuthServiceFailure));

  @override
  _$AuthServiceFailure get _value => super._value as _$AuthServiceFailure;

  @override
  $Res call({
    Object? serviceFailure = freezed,
  }) {
    return _then(_$AuthServiceFailure(
      serviceFailure == freezed
          ? _value.serviceFailure
          : serviceFailure // ignore: cast_nullable_to_non_nullable
              as ChatClientServiceFailures,
    ));
  }

  @override
  $ChatClientServiceFailuresCopyWith<$Res> get serviceFailure {
    return $ChatClientServiceFailuresCopyWith<$Res>(_value.serviceFailure,
        (value) {
      return _then(_value.copyWith(serviceFailure: value));
    });
  }
}

/// @nodoc

class _$AuthServiceFailure implements AuthServiceFailure {
  const _$AuthServiceFailure(this.serviceFailure);

  @override
  final ChatClientServiceFailures serviceFailure;

  @override
  String toString() {
    return 'AuthFailures.serviceFailure(serviceFailure: $serviceFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthServiceFailure &&
            const DeepCollectionEquality()
                .equals(other.serviceFailure, serviceFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(serviceFailure));

  @JsonKey(ignore: true)
  @override
  _$$AuthServiceFailureCopyWith<_$AuthServiceFailure> get copyWith =>
      __$$AuthServiceFailureCopyWithImpl<_$AuthServiceFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) failure,
    required TResult Function(ChatClientServiceFailures serviceFailure)
        serviceFailure,
    required TResult Function(ChatClientRepositoryFailures repositoryFailure)
        repositoryFailure,
  }) {
    return serviceFailure(this.serviceFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMsg)? failure,
    TResult Function(ChatClientServiceFailures serviceFailure)? serviceFailure,
    TResult Function(ChatClientRepositoryFailures repositoryFailure)?
        repositoryFailure,
  }) {
    return serviceFailure?.call(this.serviceFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? failure,
    TResult Function(ChatClientServiceFailures serviceFailure)? serviceFailure,
    TResult Function(ChatClientRepositoryFailures repositoryFailure)?
        repositoryFailure,
    required TResult orElse(),
  }) {
    if (serviceFailure != null) {
      return serviceFailure(this.serviceFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthServiceFailure value) serviceFailure,
    required TResult Function(AuthRepositoryFailure value) repositoryFailure,
  }) {
    return serviceFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthServiceFailure value)? serviceFailure,
    TResult Function(AuthRepositoryFailure value)? repositoryFailure,
  }) {
    return serviceFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthServiceFailure value)? serviceFailure,
    TResult Function(AuthRepositoryFailure value)? repositoryFailure,
    required TResult orElse(),
  }) {
    if (serviceFailure != null) {
      return serviceFailure(this);
    }
    return orElse();
  }
}

abstract class AuthServiceFailure implements AuthFailures {
  const factory AuthServiceFailure(
      final ChatClientServiceFailures serviceFailure) = _$AuthServiceFailure;

  ChatClientServiceFailures get serviceFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthServiceFailureCopyWith<_$AuthServiceFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthRepositoryFailureCopyWith<$Res> {
  factory _$$AuthRepositoryFailureCopyWith(_$AuthRepositoryFailure value,
          $Res Function(_$AuthRepositoryFailure) then) =
      __$$AuthRepositoryFailureCopyWithImpl<$Res>;
  $Res call({ChatClientRepositoryFailures repositoryFailure});

  $ChatClientRepositoryFailuresCopyWith<$Res> get repositoryFailure;
}

/// @nodoc
class __$$AuthRepositoryFailureCopyWithImpl<$Res>
    extends _$AuthFailuresCopyWithImpl<$Res>
    implements _$$AuthRepositoryFailureCopyWith<$Res> {
  __$$AuthRepositoryFailureCopyWithImpl(_$AuthRepositoryFailure _value,
      $Res Function(_$AuthRepositoryFailure) _then)
      : super(_value, (v) => _then(v as _$AuthRepositoryFailure));

  @override
  _$AuthRepositoryFailure get _value => super._value as _$AuthRepositoryFailure;

  @override
  $Res call({
    Object? repositoryFailure = freezed,
  }) {
    return _then(_$AuthRepositoryFailure(
      repositoryFailure == freezed
          ? _value.repositoryFailure
          : repositoryFailure // ignore: cast_nullable_to_non_nullable
              as ChatClientRepositoryFailures,
    ));
  }

  @override
  $ChatClientRepositoryFailuresCopyWith<$Res> get repositoryFailure {
    return $ChatClientRepositoryFailuresCopyWith<$Res>(_value.repositoryFailure,
        (value) {
      return _then(_value.copyWith(repositoryFailure: value));
    });
  }
}

/// @nodoc

class _$AuthRepositoryFailure implements AuthRepositoryFailure {
  const _$AuthRepositoryFailure(this.repositoryFailure);

  @override
  final ChatClientRepositoryFailures repositoryFailure;

  @override
  String toString() {
    return 'AuthFailures.repositoryFailure(repositoryFailure: $repositoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRepositoryFailure &&
            const DeepCollectionEquality()
                .equals(other.repositoryFailure, repositoryFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(repositoryFailure));

  @JsonKey(ignore: true)
  @override
  _$$AuthRepositoryFailureCopyWith<_$AuthRepositoryFailure> get copyWith =>
      __$$AuthRepositoryFailureCopyWithImpl<_$AuthRepositoryFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) failure,
    required TResult Function(ChatClientServiceFailures serviceFailure)
        serviceFailure,
    required TResult Function(ChatClientRepositoryFailures repositoryFailure)
        repositoryFailure,
  }) {
    return repositoryFailure(this.repositoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMsg)? failure,
    TResult Function(ChatClientServiceFailures serviceFailure)? serviceFailure,
    TResult Function(ChatClientRepositoryFailures repositoryFailure)?
        repositoryFailure,
  }) {
    return repositoryFailure?.call(this.repositoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? failure,
    TResult Function(ChatClientServiceFailures serviceFailure)? serviceFailure,
    TResult Function(ChatClientRepositoryFailures repositoryFailure)?
        repositoryFailure,
    required TResult orElse(),
  }) {
    if (repositoryFailure != null) {
      return repositoryFailure(this.repositoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthServiceFailure value) serviceFailure,
    required TResult Function(AuthRepositoryFailure value) repositoryFailure,
  }) {
    return repositoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthServiceFailure value)? serviceFailure,
    TResult Function(AuthRepositoryFailure value)? repositoryFailure,
  }) {
    return repositoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthServiceFailure value)? serviceFailure,
    TResult Function(AuthRepositoryFailure value)? repositoryFailure,
    required TResult orElse(),
  }) {
    if (repositoryFailure != null) {
      return repositoryFailure(this);
    }
    return orElse();
  }
}

abstract class AuthRepositoryFailure implements AuthFailures {
  const factory AuthRepositoryFailure(
          final ChatClientRepositoryFailures repositoryFailure) =
      _$AuthRepositoryFailure;

  ChatClientRepositoryFailures get repositoryFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthRepositoryFailureCopyWith<_$AuthRepositoryFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
