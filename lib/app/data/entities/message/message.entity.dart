import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:peer_chat/app/data/entities/message/data_message.dart';

import 'message_type.enum.dart';
import 'start_message_data.dart';
import 'transmit_public_key_message_data.dart';

part 'message.entity.freezed.dart';
part 'message.entity.g.dart';

@freezed
class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    MessageType? type,
    StartMessageData? startMessageData,
    TransmitPublicKeyMessageData? transmitPublicKeyMessageData,
    DataMessage? dataMessage,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);

  //Map<String, dynamic> toJson() => _$MessageEntityToJson(this);
}
