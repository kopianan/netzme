// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskHomeState {
  List<TaskEntity> get tasks => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  TaskFailure? get taskFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskHomeStateCopyWith<TaskHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskHomeStateCopyWith<$Res> {
  factory $TaskHomeStateCopyWith(
          TaskHomeState value, $Res Function(TaskHomeState) then) =
      _$TaskHomeStateCopyWithImpl<$Res, TaskHomeState>;
  @useResult
  $Res call({List<TaskEntity> tasks, bool isLoading, TaskFailure? taskFailure});

  $TaskFailureCopyWith<$Res>? get taskFailure;
}

/// @nodoc
class _$TaskHomeStateCopyWithImpl<$Res, $Val extends TaskHomeState>
    implements $TaskHomeStateCopyWith<$Res> {
  _$TaskHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isLoading = null,
    Object? taskFailure = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      taskFailure: freezed == taskFailure
          ? _value.taskFailure
          : taskFailure // ignore: cast_nullable_to_non_nullable
              as TaskFailure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskFailureCopyWith<$Res>? get taskFailure {
    if (_value.taskFailure == null) {
      return null;
    }

    return $TaskFailureCopyWith<$Res>(_value.taskFailure!, (value) {
      return _then(_value.copyWith(taskFailure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskHomeStateImplCopyWith<$Res>
    implements $TaskHomeStateCopyWith<$Res> {
  factory _$$TaskHomeStateImplCopyWith(
          _$TaskHomeStateImpl value, $Res Function(_$TaskHomeStateImpl) then) =
      __$$TaskHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TaskEntity> tasks, bool isLoading, TaskFailure? taskFailure});

  @override
  $TaskFailureCopyWith<$Res>? get taskFailure;
}

/// @nodoc
class __$$TaskHomeStateImplCopyWithImpl<$Res>
    extends _$TaskHomeStateCopyWithImpl<$Res, _$TaskHomeStateImpl>
    implements _$$TaskHomeStateImplCopyWith<$Res> {
  __$$TaskHomeStateImplCopyWithImpl(
      _$TaskHomeStateImpl _value, $Res Function(_$TaskHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isLoading = null,
    Object? taskFailure = freezed,
  }) {
    return _then(_$TaskHomeStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      taskFailure: freezed == taskFailure
          ? _value.taskFailure
          : taskFailure // ignore: cast_nullable_to_non_nullable
              as TaskFailure?,
    ));
  }
}

/// @nodoc

class _$TaskHomeStateImpl extends _TaskHomeState {
  const _$TaskHomeStateImpl(
      {final List<TaskEntity> tasks = const [],
      this.isLoading = false,
      this.taskFailure})
      : _tasks = tasks,
        super._();

  final List<TaskEntity> _tasks;
  @override
  @JsonKey()
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final TaskFailure? taskFailure;

  @override
  String toString() {
    return 'TaskHomeState(tasks: $tasks, isLoading: $isLoading, taskFailure: $taskFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskHomeStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.taskFailure, taskFailure) ||
                other.taskFailure == taskFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tasks), isLoading, taskFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskHomeStateImplCopyWith<_$TaskHomeStateImpl> get copyWith =>
      __$$TaskHomeStateImplCopyWithImpl<_$TaskHomeStateImpl>(this, _$identity);
}

abstract class _TaskHomeState extends TaskHomeState {
  const factory _TaskHomeState(
      {final List<TaskEntity> tasks,
      final bool isLoading,
      final TaskFailure? taskFailure}) = _$TaskHomeStateImpl;
  const _TaskHomeState._() : super._();

  @override
  List<TaskEntity> get tasks;
  @override
  bool get isLoading;
  @override
  TaskFailure? get taskFailure;
  @override
  @JsonKey(ignore: true)
  _$$TaskHomeStateImplCopyWith<_$TaskHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
