// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Note get note => throw _privateConstructorUsedError;
  DeleteNoteStatus? get deleteNoteStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteDetailsStateCopyWith<NoteDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDetailsStateCopyWith<$Res> {
  factory $NoteDetailsStateCopyWith(
          NoteDetailsState value, $Res Function(NoteDetailsState) then) =
      _$NoteDetailsStateCopyWithImpl<$Res, NoteDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Note note,
      DeleteNoteStatus? deleteNoteStatus});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteDetailsStateCopyWithImpl<$Res, $Val extends NoteDetailsState>
    implements $NoteDetailsStateCopyWith<$Res> {
  _$NoteDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? note = null,
    Object? deleteNoteStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      deleteNoteStatus: freezed == deleteNoteStatus
          ? _value.deleteNoteStatus
          : deleteNoteStatus // ignore: cast_nullable_to_non_nullable
              as DeleteNoteStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NoteDetailsStateCopyWith<$Res>
    implements $NoteDetailsStateCopyWith<$Res> {
  factory _$$_NoteDetailsStateCopyWith(
          _$_NoteDetailsState value, $Res Function(_$_NoteDetailsState) then) =
      __$$_NoteDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Note note,
      DeleteNoteStatus? deleteNoteStatus});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_NoteDetailsStateCopyWithImpl<$Res>
    extends _$NoteDetailsStateCopyWithImpl<$Res, _$_NoteDetailsState>
    implements _$$_NoteDetailsStateCopyWith<$Res> {
  __$$_NoteDetailsStateCopyWithImpl(
      _$_NoteDetailsState _value, $Res Function(_$_NoteDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? note = null,
    Object? deleteNoteStatus = freezed,
  }) {
    return _then(_$_NoteDetailsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      deleteNoteStatus: freezed == deleteNoteStatus
          ? _value.deleteNoteStatus
          : deleteNoteStatus // ignore: cast_nullable_to_non_nullable
              as DeleteNoteStatus?,
    ));
  }
}

/// @nodoc

class _$_NoteDetailsState implements _NoteDetailsState {
  const _$_NoteDetailsState(
      {required this.isLoading,
      required this.isError,
      required this.note,
      required this.deleteNoteStatus});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final Note note;
  @override
  final DeleteNoteStatus? deleteNoteStatus;

  @override
  String toString() {
    return 'NoteDetailsState(isLoading: $isLoading, isError: $isError, note: $note, deleteNoteStatus: $deleteNoteStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteDetailsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.deleteNoteStatus, deleteNoteStatus) ||
                other.deleteNoteStatus == deleteNoteStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, note, deleteNoteStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteDetailsStateCopyWith<_$_NoteDetailsState> get copyWith =>
      __$$_NoteDetailsStateCopyWithImpl<_$_NoteDetailsState>(this, _$identity);
}

abstract class _NoteDetailsState implements NoteDetailsState {
  const factory _NoteDetailsState(
      {required final bool isLoading,
      required final bool isError,
      required final Note note,
      required final DeleteNoteStatus? deleteNoteStatus}) = _$_NoteDetailsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  Note get note;
  @override
  DeleteNoteStatus? get deleteNoteStatus;
  @override
  @JsonKey(ignore: true)
  _$$_NoteDetailsStateCopyWith<_$_NoteDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
