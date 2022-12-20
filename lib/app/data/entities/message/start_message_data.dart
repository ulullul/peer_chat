import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'start_message_data.freezed.dart';
part 'start_message_data.g.dart';

@freezed
class StartMessageData with _$StartMessageData {
  const factory StartMessageData({
    String? publicKey,
  }) = _StartMessageData;

  factory StartMessageData.fromJson(Map<String, dynamic> json) =>
      _$StartMessageDataFromJson(json);

  //Map<String, dynamic> toJson() => _$StartMessageDataToJson(this);
}
