// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageEntity _$$_MessageEntityFromJson(Map<String, dynamic> json) =>
    _$_MessageEntity(
      type: $enumDecodeNullable(_$MessageTypeEnumMap, json['type']),
      startMessageData: json['startMessageData'] == null
          ? null
          : StartMessageData.fromJson(
              json['startMessageData'] as Map<String, dynamic>),
      transmitPublicKeyMessageData: json['transmitPublicKeyMessageData'] == null
          ? null
          : TransmitPublicKeyMessageData.fromJson(
              json['transmitPublicKeyMessageData'] as Map<String, dynamic>),
      dataMessage: json['dataMessage'] == null
          ? null
          : DataMessage.fromJson(json['dataMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageEntityToJson(_$_MessageEntity instance) =>
    <String, dynamic>{
      'type': _$MessageTypeEnumMap[instance.type],
      'startMessageData': instance.startMessageData,
      'transmitPublicKeyMessageData': instance.transmitPublicKeyMessageData,
      'dataMessage': instance.dataMessage,
    };

const _$MessageTypeEnumMap = {
  MessageType.startConnection: 'startConnection',
  MessageType.receivePublicKey: 'receivePublicKey',
  MessageType.dataMessage: 'dataMessage',
};
