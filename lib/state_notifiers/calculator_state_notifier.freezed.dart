// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calculator_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalculatorStateTearOff {
  const _$CalculatorStateTearOff();

  _CalculatorState call({String? id, String? inputField, String? result}) {
    return _CalculatorState(
      id: id,
      inputField: inputField,
      result: result,
    );
  }
}

/// @nodoc
const $CalculatorState = _$CalculatorStateTearOff();

/// @nodoc
mixin _$CalculatorState {
  String? get id => throw _privateConstructorUsedError;
  String? get inputField => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorStateCopyWith<CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStateCopyWith<$Res> {
  factory $CalculatorStateCopyWith(
          CalculatorState value, $Res Function(CalculatorState) then) =
      _$CalculatorStateCopyWithImpl<$Res>;
  $Res call({String? id, String? inputField, String? result});
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  final CalculatorState _value;
  // ignore: unused_field
  final $Res Function(CalculatorState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? inputField = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      inputField: inputField == freezed
          ? _value.inputField
          : inputField // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CalculatorStateCopyWith<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  factory _$CalculatorStateCopyWith(
          _CalculatorState value, $Res Function(_CalculatorState) then) =
      __$CalculatorStateCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? inputField, String? result});
}

/// @nodoc
class __$CalculatorStateCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res>
    implements _$CalculatorStateCopyWith<$Res> {
  __$CalculatorStateCopyWithImpl(
      _CalculatorState _value, $Res Function(_CalculatorState) _then)
      : super(_value, (v) => _then(v as _CalculatorState));

  @override
  _CalculatorState get _value => super._value as _CalculatorState;

  @override
  $Res call({
    Object? id = freezed,
    Object? inputField = freezed,
    Object? result = freezed,
  }) {
    return _then(_CalculatorState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      inputField: inputField == freezed
          ? _value.inputField
          : inputField // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CalculatorState extends _CalculatorState {
  const _$_CalculatorState({this.id, this.inputField, this.result}) : super._();

  @override
  final String? id;
  @override
  final String? inputField;
  @override
  final String? result;

  @override
  String toString() {
    return 'CalculatorState(id: $id, inputField: $inputField, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalculatorState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.inputField, inputField) ||
                const DeepCollectionEquality()
                    .equals(other.inputField, inputField)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(inputField) ^
      const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$CalculatorStateCopyWith<_CalculatorState> get copyWith =>
      __$CalculatorStateCopyWithImpl<_CalculatorState>(this, _$identity);
}

abstract class _CalculatorState extends CalculatorState {
  const factory _CalculatorState(
      {String? id, String? inputField, String? result}) = _$_CalculatorState;
  const _CalculatorState._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get inputField => throw _privateConstructorUsedError;
  @override
  String? get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CalculatorStateCopyWith<_CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
