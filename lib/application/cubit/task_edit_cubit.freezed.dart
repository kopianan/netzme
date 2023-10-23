// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEditState {
  TaskEntity? get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEditStateCopyWith<TaskEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditStateCopyWith<$Res> {
  factory $TaskEditStateCopyWith(
          TaskEditState value, $Res Function(TaskEditState) then) =
      _$TaskEditStateCopyWithImpl<$Res, TaskEditState>;
  @useResult
  $Res call({TaskEntity? task});

  $TaskEntityCopyWith<$Res>? get task;
}

/// @nodoc
class _$TaskEditStateCopyWithImpl<$Res, $Val extends TaskEditState>
    implements $TaskEditStateCopyWith<$Res> {
  _$TaskEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $TaskEntityCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskEditStateImplCopyWith<$Res>
    implements $TaskEditStateCopyWith<$Res> {
  factory _$$TaskEditStateImplCopyWith(
          _$TaskEditStateImpl value, $Res Function(_$TaskEditStateImpl) then) =
      __$$TaskEditStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskEntity? task});

  @override
  $TaskEntityCopyWith<$Res>? get task;
}

/// @nodoc
class __$$TaskEditStateImplCopyWithImpl<$Res>
    extends _$TaskEditStateCopyWithImpl<$Res, _$TaskEditStateImpl>
    implements _$$TaskEditStateImplCopyWith<$Res> {
  __$$TaskEditStateImplCopyWithImpl(
      _$TaskEditStateImpl _value, $Res Function(_$TaskEditStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$TaskEditStateImpl(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity?,
    ));
  }
}

/// @nodoc

class _$TaskEditStateImpl extends _TaskEditState {
  const _$TaskEditStateImpl({this.task}) : super._();

  @override
  final TaskEntity? task;

  @override
  String toString() {
    return 'TaskEditState(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditStateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEditStateImplCopyWith<_$TaskEditStateImpl> get copyWith =>
      __$$TaskEditStateImplCopyWithImpl<_$TaskEditStateImpl>(this, _$identity);
}

abstract class _TaskEditState extends TaskEditState {
  const factory _TaskEditState({final TaskEntity? task}) = _$TaskEditStateImpl;
  const _TaskEditState._() : super._();

  @override
  TaskEntity? get task;
  @override
  @JsonKey(ignore: true)
  _$$TaskEditStateImplCopyWith<_$TaskEditStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
