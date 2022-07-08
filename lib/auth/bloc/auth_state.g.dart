// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateInitial _$$AuthStateInitialFromJson(Map<String, dynamic> json) =>
    _$AuthStateInitial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateInitialToJson(_$AuthStateInitial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateLoading _$$AuthStateLoadingFromJson(Map<String, dynamic> json) =>
    _$AuthStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateLoadingToJson(_$AuthStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateAuthenticated _$$AuthStateAuthenticatedFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateAuthenticated(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateAuthenticatedToJson(
        _$AuthStateAuthenticated instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$AuthStateUnauthenticated _$$AuthStateUnauthenticatedFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateUnauthenticated(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateUnauthenticatedToJson(
        _$AuthStateUnauthenticated instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateFailed _$$AuthStateFailedFromJson(Map<String, dynamic> json) =>
    _$AuthStateFailed(
      json['errorMsg'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateFailedToJson(_$AuthStateFailed instance) =>
    <String, dynamic>{
      'errorMsg': instance.errorMsg,
      'runtimeType': instance.$type,
    };
