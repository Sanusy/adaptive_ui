// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_note_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddNoteState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  AddNoteStatus? get addNoteStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNoteStateCopyWith<AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateCopyWith(
          AddNoteState value, $Res Function(AddNoteState) then) =
      _$AddNoteStateCopyWithImpl<$Res, AddNoteState>;
  @useResult
  $Res call(
      {bool isLoading,
      String title,
      String subTitle,
      AddNoteStatus? addNoteStatus});
}

/// @nodoc
class _$AddNoteStateCopyWithImpl<$Res, $Val extends AddNoteState>
    implements $AddNoteStateCopyWith<$Res> {
  _$AddNoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? title = null,
    Object? subTitle = null,
    Object? addNoteStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      addNoteStatus: freezed == addNoteStatus
          ? _value.addNoteStatus
          : addNoteStatus // ignore: cast_nullable_to_non_nullable
              as AddNoteStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddNoteStateCopyWith<$Res>
    implements $AddNoteStateCopyWith<$Res> {
  factory _$$_AddNoteStateCopyWith(
          _$_AddNoteState value, $Res Function(_$_AddNoteState) then) =
      __$$_AddNoteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String title,
      String subTitle,
      AddNoteStatus? addNoteStatus});
}

/// @nodoc
class __$$_AddNoteStateCopyWithImpl<$Res>
    extends _$AddNoteStateCopyWithImpl<$Res, _$_AddNoteState>
    implements _$$_AddNoteStateCopyWith<$Res> {
  __$$_AddNoteStateCopyWithImpl(
      _$_AddNoteState _value, $Res Function(_$_AddNoteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? title = null,
    Object? subTitle = null,
    Object? addNoteStatus = freezed,
  }) {
    return _then(_$_AddNoteState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      addNoteStatus: freezed == addNoteStatus
          ? _value.addNoteStatus
          : addNoteStatus // ignore: cast_nullable_to_non_nullable
              as AddNoteStatus?,
    ));
  }
}

/// @nodoc

class _$_AddNoteState extends _AddNoteState {
  const _$_AddNoteState(
      {required this.isLoading,
      required this.title,
      required this.subTitle,
      required this.addNoteStatus})
      : super._();

  @override
  final bool isLoading;
  @override
  final String title;
  @override
  final String subTitle;
  @override
  final AddNoteStatus? addNoteStatus;

  @override
  String toString() {
    return 'AddNoteState(isLoading: $isLoading, title: $title, subTitle: $subTitle, addNoteStatus: $addNoteStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNoteState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.addNoteStatus, addNoteStatus) ||
                other.addNoteStatus == addNoteStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, title, subTitle, addNoteStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      __$$_AddNoteStateCopyWithImpl<_$_AddNoteState>(this, _$identity);
}

abstract class _AddNoteState extends AddNoteState {
  const factory _AddNoteState(
      {required final bool isLoading,
      required final String title,
      required final String subTitle,
      required final AddNoteStatus? addNoteStatus}) = _$_AddNoteState;
  const _AddNoteState._() : super._();

  @override
  bool get isLoading;
  @override
  String get title;
  @override
  String get subTitle;
  @override
  AddNoteStatus? get addNoteStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
