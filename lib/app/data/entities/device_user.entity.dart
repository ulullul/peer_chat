import 'package:flutter_nearby_connections/flutter_nearby_connections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:peer_chat/app/data/entities/user_min.entity.dart';

import 'user.entity.dart';

part 'device_user.entity.freezed.dart';
part 'device_user.entity.g.dart';

@freezed
class DeviceUserEntity with _$DeviceUserEntity {
  const factory DeviceUserEntity({
    @JsonKey(fromJson: deviceFromJson, toJson: deviceToJson) required Device device,
    required UserMinEntity user,
  }) = _DeviceUserEntity;

  factory DeviceUserEntity.fromJson(Map<String, dynamic> json) =>
      _$DeviceUserEntityFromJson(json);

  //Map<String, dynamic> toJson() => _$DeviceUserEntityToJson(this);
}

Device deviceFromJson(Map<String, dynamic> json) {
  return Device(json['deviceId'], json['deviceName'], json['state']);
}

Map<String, dynamic> deviceToJson(Device d) {
  return {};
}
