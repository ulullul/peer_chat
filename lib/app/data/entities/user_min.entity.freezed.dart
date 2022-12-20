// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_min.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserMinEntity _$UserMinEntityFromJson(Map<String, dynamic> json) {
  return _UserMinEntity.fromJson(json);
}

/// @nodoc
mixin _$UserMinEntity {
  String get fullName => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMinEntityCopyWith<UserMinEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMinEntityCopyWith<$Res> {
  factory $UserMinEntityCopyWith(
          UserMinEntity value, $Res Function(UserMinEntity) then) =
      _$UserMinEntityCopyWithImpl<$Res, UserMinEntity>;
  @useResult
  $Res call({String fullName, String uuid});
}

/// @nodoc
class _$UserMinEntityCopyWithImpl<$Res, $Val extends UserMinEntity>
    implements $UserMinEntityCopyWith<$Res> {
  _$UserMinEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserMinEntityCopyWith<$Res>
    implements $UserMinEntityCopyWith<$Res> {
  factory _$$_UserMinEntityCopyWith(
          _$_UserMinEntity value, $Res Function(_$_UserMinEntity) then) =
      __$$_UserMinEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullName, String uuid});
}

/// @nodoc
class __$$_UserMinEntityCopyWithImpl<$Res>
    extends _$UserMinEntityCopyWithImpl<$Res, _$_UserMinEntity>
    implements _$$_UserMinEntityCopyWith<$Res> {
  __$$_UserMinEntityCopyWithImpl(
      _$_UserMinEntity _value, $Res Function(_$_UserMinEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? uuid = null,
  }) {
    return _then(_$_UserMinEntity(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserMinEntity with DiagnosticableTreeMixin implements _UserMinEntity {
  const _$_UserMinEntity({required this.fullName, required this.uuid});

  factory _$_UserMinEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserMinEntityFromJson(json);

  @override
  final String fullName;
  @override
  final String uuid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserMinEntity(fullName: $fullName, uuid: $uuid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserMinEntity'))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserMinEntity &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserMinEntityCopyWith<_$_UserMinEntity> get copyWith =>
      __$$_UserMinEntityCopyWithImpl<_$_UserMinEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserMinEntityToJson(
      this,
    );
  }
}

abstract class _UserMinEntity implements UserMinEntity {
  const factory _UserMinEntity(
      {required final String fullName,
      required final String uuid}) = _$_UserMinEntity;

  factory _UserMinEntity.fromJson(Map<String, dynamic> json) =
      _$_UserMinEntity.fromJson;

  @override
  String get fullName;
  @override
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_UserMinEntityCopyWith<_$_UserMinEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
