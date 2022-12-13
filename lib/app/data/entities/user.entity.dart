import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:peer_chat/app/services/hash.service.dart';


part 'user.entity.freezed.dart';
part 'user.entity.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String id,
    required String fullName,
    required String username,
    required String password,
    @Default(false) bool isConnected,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  List<int> getSeed() {
    return [...username.codeUnits, ...password.codeUnits];
  }

  Future<String> getHashedPassword() async {
    return await HashService.base64Hash(password);
  }
}
