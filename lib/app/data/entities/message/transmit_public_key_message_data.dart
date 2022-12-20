import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'transmit_public_key_message_data.freezed.dart';
part 'transmit_public_key_message_data.g.dart';

@freezed
class TransmitPublicKeyMessageData with _$TransmitPublicKeyMessageData {
  const factory TransmitPublicKeyMessageData({
    String? publicKey,
  }) = _TransmitPublicKeyMessageData;

  factory TransmitPublicKeyMessageData.fromJson(Map<String, dynamic> json) =>
      _$TransmitPublicKeyMessageDataFromJson(json);

  //Map<String, dynamic> toJson() => _$TransmitPublicKeyMessageDataToJson(this);
}
