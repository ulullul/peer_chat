// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transmit_public_key_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransmitPublicKeyMessageData _$TransmitPublicKeyMessageDataFromJson(
    Map<String, dynamic> json) {
  return _TransmitPublicKeyMessageData.fromJson(json);
}

/// @nodoc
mixin _$TransmitPublicKeyMessageData {
  String? get publicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransmitPublicKeyMessageDataCopyWith<TransmitPublicKeyMessageData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransmitPublicKeyMessageDataCopyWith<$Res> {
  factory $TransmitPublicKeyMessageDataCopyWith(
          TransmitPublicKeyMessageData value,
          $Res Function(TransmitPublicKeyMessageData) then) =
      _$TransmitPublicKeyMessageDataCopyWithImpl<$Res,
          TransmitPublicKeyMessageData>;
  @useResult
  $Res call({String? publicKey});
}

/// @nodoc
class _$TransmitPublicKeyMessageDataCopyWithImpl<$Res,
        $Val extends TransmitPublicKeyMessageData>
    implements $TransmitPublicKeyMessageDataCopyWith<$Res> {
  _$TransmitPublicKeyMessageDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_TransmitPublicKeyMessageDataCopyWith<$Res>
    implements $TransmitPublicKeyMessageDataCopyWith<$Res> {
  factory _$$_TransmitPublicKeyMessageDataCopyWith(
          _$_TransmitPublicKeyMessageData value,
          $Res Function(_$_TransmitPublicKeyMessageData) then) =
      __$$_TransmitPublicKeyMessageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? publicKey});
}

/// @nodoc
class __$$_TransmitPublicKeyMessageDataCopyWithImpl<$Res>
    extends _$TransmitPublicKeyMessageDataCopyWithImpl<$Res,
        _$_TransmitPublicKeyMessageData>
    implements _$$_TransmitPublicKeyMessageDataCopyWith<$Res> {
  __$$_TransmitPublicKeyMessageDataCopyWithImpl(
      _$_TransmitPublicKeyMessageData _value,
      $Res Function(_$_TransmitPublicKeyMessageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = freezed,
  }) {
    return _then(_$_TransmitPublicKeyMessageData(
      publicKey: freezed == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransmitPublicKeyMessageData
    with DiagnosticableTreeMixin
    implements _TransmitPublicKeyMessageData {
  const _$_TransmitPublicKeyMessageData({this.publicKey});

  factory _$_TransmitPublicKeyMessageData.fromJson(Map<String, dynamic> json) =>
      _$$_TransmitPublicKeyMessageDataFromJson(json);

  @override
  final String? publicKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransmitPublicKeyMessageData(publicKey: $publicKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransmitPublicKeyMessageData'))
      ..add(DiagnosticsProperty('publicKey', publicKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransmitPublicKeyMessageData &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransmitPublicKeyMessageDataCopyWith<_$_TransmitPublicKeyMessageData>
      get copyWith => __$$_TransmitPublicKeyMessageDataCopyWithImpl<
          _$_TransmitPublicKeyMessageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransmitPublicKeyMessageDataToJson(
      this,
    );
  }
}

abstract class _TransmitPublicKeyMessageData
    implements TransmitPublicKeyMessageData {
  const factory _TransmitPublicKeyMessageData({final String? publicKey}) =
      _$_TransmitPublicKeyMessageData;

  factory _TransmitPublicKeyMessageData.fromJson(Map<String, dynamic> json) =
      _$_TransmitPublicKeyMessageData.fromJson;

  @override
  String? get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$_TransmitPublicKeyMessageDataCopyWith<_$_TransmitPublicKeyMessageData>
      get copyWith => throw _privateConstructorUsedError;
}
