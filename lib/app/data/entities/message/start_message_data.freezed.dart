// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartMessageData _$StartMessageDataFromJson(Map<String, dynamic> json) {
  return _StartMessageData.fromJson(json);
}

/// @nodoc
mixin _$StartMessageData {
  String? get publicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartMessageDataCopyWith<StartMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartMessageDataCopyWith<$Res> {
  factory $StartMessageDataCopyWith(
          StartMessageData value, $Res Function(StartMessageData) then) =
      _$StartMessageDataCopyWithImpl<$Res, StartMessageData>;
  @useResult
  $Res call({String? publicKey});
}

/// @nodoc
class _$StartMessageDataCopyWithImpl<$Res, $Val extends StartMessageData>
    implements $StartMessageDataCopyWith<$Res> {
  _$StartMessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = freezed,
  }) {
    return _then(_value.copyWith(
      publicKey: freezed == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartMessageDataCopyWith<$Res>
    implements $StartMessageDataCopyWith<$Res> {
  factory _$$_StartMessageDataCopyWith(
          _$_StartMessageData value, $Res Function(_$_StartMessageData) then) =
      __$$_StartMessageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? publicKey});
}

/// @nodoc
class __$$_StartMessageDataCopyWithImpl<$Res>
    extends _$StartMessageDataCopyWithImpl<$Res, _$_StartMessageData>
    implements _$$_StartMessageDataCopyWith<$Res> {
  __$$_StartMessageDataCopyWithImpl(
      _$_StartMessageData _value, $Res Function(_$_StartMessageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = freezed,
  }) {
    return _then(_$_StartMessageData(
      publicKey: freezed == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartMessageData
    with DiagnosticableTreeMixin
    implements _StartMessageData {
  const _$_StartMessageData({this.publicKey});

  factory _$_StartMessageData.fromJson(Map<String, dynamic> json) =>
      _$$_StartMessageDataFromJson(json);

  @override
  final String? publicKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartMessageData(publicKey: $publicKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartMessageData'))
      ..add(DiagnosticsProperty('publicKey', publicKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartMessageData &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartMessageDataCopyWith<_$_StartMessageData> get copyWith =>
      __$$_StartMessageDataCopyWithImpl<_$_StartMessageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartMessageDataToJson(
      this,
    );
  }
}

abstract class _StartMessageData implements StartMessageData {
  const factory _StartMessageData({final String? publicKey}) =
      _$_StartMessageData;

  factory _StartMessageData.fromJson(Map<String, dynamic> json) =
      _$_StartMessageData.fromJson;

  @override
  String? get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$_StartMessageDataCopyWith<_$_StartMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}
