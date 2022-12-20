// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get keyPairData => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String fullName,
      String username,
      String password,
      String? keyPairData,
      String? uuid,
      bool isConnected});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? username = null,
    Object? password = null,
    Object? keyPairData = freezed,
    Object? uuid = freezed,
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      keyPairData: freezed == keyPairData
          ? _value.keyPairData
          : keyPairData // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fullName,
      String username,
      String password,
      String? keyPairData,
      String? uuid,
      bool isConnected});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? username = null,
    Object? password = null,
    Object? keyPairData = freezed,
    Object? uuid = freezed,
    Object? isConnected = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      keyPairData: freezed == keyPairData
          ? _value.keyPairData
          : keyPairData // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User(
      {required this.id,
      required this.fullName,
      required this.username,
      required this.password,
      this.keyPairData,
      this.uuid,
      this.isConnected = false})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String fullName;
  @override
  final String username;
  @override
  final String password;
  @override
  final String? keyPairData;
  @override
  final String? uuid;
  @override
  @JsonKey()
  final bool isConnected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, fullName: $fullName, username: $username, password: $password, keyPairData: $keyPairData, uuid: $uuid, isConnected: $isConnected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('keyPairData', keyPairData))
      ..add(DiagnosticsProperty('uuid', uuid))
      ..add(DiagnosticsProperty('isConnected', isConnected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.keyPairData, keyPairData) ||
                other.keyPairData == keyPairData) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, username, password,
      keyPairData, uuid, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {required final String id,
      required final String fullName,
      required final String username,
      required final String password,
      final String? keyPairData,
      final String? uuid,
      final bool isConnected}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get fullName;
  @override
  String get username;
  @override
  String get password;
  @override
  String? get keyPairData;
  @override
  String? get uuid;
  @override
  bool get isConnected;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
