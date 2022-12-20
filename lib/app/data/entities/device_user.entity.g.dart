// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_user.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceUserEntity _$$_DeviceUserEntityFromJson(Map<String, dynamic> json) =>
    _$_DeviceUserEntity(
      device: deviceFromJson(json['device'] as Map<String, dynamic>),
      user: UserMinEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeviceUserEntityToJson(_$_DeviceUserEntity instance) =>
    <String, dynamic>{
      'device': deviceToJson(instance.device),
      'user': instance.user,
    };
