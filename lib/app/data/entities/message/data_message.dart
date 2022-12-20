import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'data_message.freezed.dart';
part 'data_message.g.dart';

@freezed
class DataMessage with _$DataMessage {
  const factory DataMessage({
    String? data,
  }) = _DataMessage;

  factory DataMessage.fromJson(Map<String, dynamic> json) =>
      _$DataMessageFromJson(json);

  //Map<String, dynamic> toJson() => _$DataMessageToJson(this);
}
