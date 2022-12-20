// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_user.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceUserEntity _$DeviceUserEntityFromJson(Map<String, dynamic> json) {
  return _DeviceUserEntity.fromJson(json);
}

/// @nodoc
mixin _$DeviceUserEntity {
  @JsonKey(fromJson: deviceFromJson, toJson: deviceToJson)
  Device get device => throw _privateConstructorUsedError;
  UserMinEntity get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceUserEntityCopyWith<DeviceUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceUserEntityCopyWith<$Res> {
  factory $DeviceUserEntityCopyWith(
          DeviceUserEntity value, $Res Function(DeviceUserEntity) then) =
      _$DeviceUserEntityCopyWithImpl<$Res, DeviceUserEntity>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: deviceFromJson, toJson: deviceToJson) Device device,
      UserMinEntity user});

  $UserMinEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$DeviceUserEntityCopyWithImpl<$Res, $Val extends DeviceUserEntity>
    implements $DeviceUserEntityCopyWith<$Res> {
  _$DeviceUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserMinEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMinEntityCopyWith<$Res> get user {
    return $UserMinEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeviceUserEntityCopyWith<$Res>
    implements $DeviceUserEntityCopyWith<$Res> {
  factory _$$_DeviceUserEntityCopyWith(
          _$_DeviceUserEntity value, $Res Function(_$_DeviceUserEntity) then) =
      __$$_DeviceUserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: deviceFromJson, toJson: deviceToJson) Device device,
      UserMinEntity user});

  @override
  $UserMinEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DeviceUserEntityCopyWithImpl<$Res>
    extends _$DeviceUserEntityCopyWithImpl<$Res, _$_DeviceUserEntity>
    implements _$$_DeviceUserEntityCopyWith<$Res> {
  __$$_DeviceUserEntityCopyWithImpl(
      _$_DeviceUserEntity _value, $Res Function(_$_DeviceUserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? user = null,
  }) {
    return _then(_$_DeviceUserEntity(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserMinEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceUserEntity
    with DiagnosticableTreeMixin
    implements _DeviceUserEntity {
  const _$_DeviceUserEntity(
      {@JsonKey(fromJson: deviceFromJson, toJson: deviceToJson)
          required this.device,
      required this.user});

  factory _$_DeviceUserEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceUserEntityFromJson(json);

  @override
  @JsonKey(fromJson: deviceFromJson, toJson: deviceToJson)
  final Device device;
  @override
  final UserMinEntity user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceUserEntity(device: $device, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceUserEntity'))
      ..add(DiagnosticsProperty('device', device))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceUserEntity &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, device, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceUserEntityCopyWith<_$_DeviceUserEntity> get copyWith =>
      __$$_DeviceUserEntityCopyWithImpl<_$_DeviceUserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceUserEntityToJson(
      this,
    );
  }
}

abstract class _DeviceUserEntity implements DeviceUserEntity {
  const factory _DeviceUserEntity(
      {@JsonKey(fromJson: deviceFromJson, toJson: deviceToJson)
          required final Device device,
      required final UserMinEntity user}) = _$_DeviceUserEntity;

  factory _DeviceUserEntity.fromJson(Map<String, dynamic> json) =
      _$_DeviceUserEntity.fromJson;

  @override
  @JsonKey(fromJson: deviceFromJson, toJson: deviceToJson)
  Device get device;
  @override
  UserMinEntity get user;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceUserEntityCopyWith<_$_DeviceUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
