// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      keyPairData: json['keyPairData'] as String?,
      uuid: json['uuid'] as String?,
      isConnected: json['isConnected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'username': instance.username,
      'password': instance.password,
      'keyPairData': instance.keyPairData,
      'uuid': instance.uuid,
      'isConnected': instance.isConnected,
    };
