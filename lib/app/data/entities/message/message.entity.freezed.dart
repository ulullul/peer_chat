// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) {
  return _MessageEntity.fromJson(json);
}

/// @nodoc
mixin _$MessageEntity {
  MessageType? get type => throw _privateConstructorUsedError;
  StartMessageData? get startMessageData => throw _privateConstructorUsedError;
  TransmitPublicKeyMessageData? get transmitPublicKeyMessageData =>
      throw _privateConstructorUsedError;
  DataMessage? get dataMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageEntityCopyWith<MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEntityCopyWith<$Res> {
  factory $MessageEntityCopyWith(
          MessageEntity value, $Res Function(MessageEntity) then) =
      _$MessageEntityCopyWithImpl<$Res, MessageEntity>;
  @useResult
  $Res call(
      {MessageType? type,
      StartMessageData? startMessageData,
      TransmitPublicKeyMessageData? transmitPublicKeyMessageData,
      DataMessage? dataMessage});

  $StartMessageDataCopyWith<$Res>? get startMessageData;
  $TransmitPublicKeyMessageDataCopyWith<$Res>? get transmitPublicKeyMessageData;
  $DataMessageCopyWith<$Res>? get dataMessage;
}

/// @nodoc
class _$MessageEntityCopyWithImpl<$Res, $Val extends MessageEntity>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? startMessageData = freezed,
    Object? transmitPublicKeyMessageData = freezed,
    Object? dataMessage = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType?,
      startMessageData: freezed == startMessageData
          ? _value.startMessageData
          : startMessageData // ignore: cast_nullable_to_non_nullable
              as StartMessageData?,
      transmitPublicKeyMessageData: freezed == transmitPublicKeyMessageData
          ? _value.transmitPublicKeyMessageData
          : transmitPublicKeyMessageData // ignore: cast_nullable_to_non_nullable
              as TransmitPublicKeyMessageData?,
      dataMessage: freezed == dataMessage
          ? _value.dataMessage
          : dataMessage // ignore: cast_nullable_to_non_nullable
              as DataMessage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StartMessageDataCopyWith<$Res>? get startMessageData {
    if (_value.startMessageData == null) {
      return null;
    }

    return $StartMessageDataCopyWith<$Res>(_value.startMessageData!, (value) {
      return _then(_value.copyWith(startMessageData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransmitPublicKeyMessageDataCopyWith<$Res>?
      get transmitPublicKeyMessageData {
    if (_value.transmitPublicKeyMessageData == null) {
      return null;
    }

    return $TransmitPublicKeyMessageDataCopyWith<$Res>(
        _value.transmitPublicKeyMessageData!, (value) {
      return _then(
          _value.copyWith(transmitPublicKeyMessageData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataMessageCopyWith<$Res>? get dataMessage {
    if (_value.dataMessage == null) {
      return null;
    }

    return $DataMessageCopyWith<$Res>(_value.dataMessage!, (value) {
      return _then(_value.copyWith(dataMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageEntityCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$_MessageEntityCopyWith(
          _$_MessageEntity value, $Res Function(_$_MessageEntity) then) =
      __$$_MessageEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageType? type,
      StartMessageData? startMessageData,
      TransmitPublicKeyMessageData? transmitPublicKeyMessageData,
      DataMessage? dataMessage});

  @override
  $StartMessageDataCopyWith<$Res>? get startMessageData;
  @override
  $TransmitPublicKeyMessageDataCopyWith<$Res>? get transmitPublicKeyMessageData;
  @override
  $DataMessageCopyWith<$Res>? get dataMessage;
}

/// @nodoc
class __$$_MessageEntityCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res, _$_MessageEntity>
    implements _$$_MessageEntityCopyWith<$Res> {
  __$$_MessageEntityCopyWithImpl(
      _$_MessageEntity _value, $Res Function(_$_MessageEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? startMessageData = freezed,
    Object? transmitPublicKeyMessageData = freezed,
    Object? dataMessage = freezed,
  }) {
    return _then(_$_MessageEntity(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType?,
      startMessageData: freezed == startMessageData
          ? _value.startMessageData
          : startMessageData // ignore: cast_nullable_to_non_nullable
              as StartMessageData?,
      transmitPublicKeyMessageData: freezed == transmitPublicKeyMessageData
          ? _value.transmitPublicKeyMessageData
          : transmitPublicKeyMessageData // ignore: cast_nullable_to_non_nullable
              as TransmitPublicKeyMessageData?,
      dataMessage: freezed == dataMessage
          ? _value.dataMessage
          : dataMessage // ignore: cast_nullable_to_non_nullable
              as DataMessage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageEntity with DiagnosticableTreeMixin implements _MessageEntity {
  const _$_MessageEntity(
      {this.type,
      this.startMessageData,
      this.transmitPublicKeyMessageData,
      this.dataMessage});

  factory _$_MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MessageEntityFromJson(json);

  @override
  final MessageType? type;
  @override
  final StartMessageData? startMessageData;
  @override
  final TransmitPublicKeyMessageData? transmitPublicKeyMessageData;
  @override
  final DataMessage? dataMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageEntity(type: $type, startMessageData: $startMessageData, transmitPublicKeyMessageData: $transmitPublicKeyMessageData, dataMessage: $dataMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageEntity'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('startMessageData', startMessageData))
      ..add(DiagnosticsProperty(
          'transmitPublicKeyMessageData', transmitPublicKeyMessageData))
      ..add(DiagnosticsProperty('dataMessage', dataMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageEntity &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startMessageData, startMessageData) ||
                other.startMessageData == startMessageData) &&
            (identical(other.transmitPublicKeyMessageData,
                    transmitPublicKeyMessageData) ||
                other.transmitPublicKeyMessageData ==
                    transmitPublicKeyMessageData) &&
            (identical(other.dataMessage, dataMessage) ||
                other.dataMessage == dataMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, startMessageData,
      transmitPublicKeyMessageData, dataMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageEntityCopyWith<_$_MessageEntity> get copyWith =>
      __$$_MessageEntityCopyWithImpl<_$_MessageEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageEntityToJson(
      this,
    );
  }
}

abstract class _MessageEntity implements MessageEntity {
  const factory _MessageEntity(
      {final MessageType? type,
      final StartMessageData? startMessageData,
      final TransmitPublicKeyMessageData? transmitPublicKeyMessageData,
      final DataMessage? dataMessage}) = _$_MessageEntity;

  factory _MessageEntity.fromJson(Map<String, dynamic> json) =
      _$_MessageEntity.fromJson;

  @override
  MessageType? get type;
  @override
  StartMessageData? get startMessageData;
  @override
  TransmitPublicKeyMessageData? get transmitPublicKeyMessageData;
  @override
  DataMessage? get dataMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MessageEntityCopyWith<_$_MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
