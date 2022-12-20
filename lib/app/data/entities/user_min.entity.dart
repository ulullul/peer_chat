
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_min.entity.freezed.dart';
part 'user_min.entity.g.dart';

@freezed
class UserMinEntity with _$UserMinEntity{

  const factory UserMinEntity({
    required String fullName,
    required String uuid,
  }) = _UserMinEntity;

  factory UserMinEntity.fromJson(Map<String, dynamic> json) =>
     _$UserMinEntityFromJson(json);

  //Map<String, dynamic> toJson() => _$UserMinEntityToJson(this);
}
