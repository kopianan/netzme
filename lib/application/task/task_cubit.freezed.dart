// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() saveSuccess,
    required TResult Function(TaskEntity newTask) editSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? saveSuccess,
    TResult? Function(TaskEntity newTask)? editSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? saveSuccess,
    TResult Function(TaskEntity newTask)? editSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TaskState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() saveSuccess,
    required TResult Function(TaskEntity newTask) editSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? saveSuccess,
    TResult? Function(TaskEntity newTask)? editSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? saveSuccess,
    TResult Function(TaskEntity newTask)? editSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TaskState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() saveSuccess,
    required TResult Function(TaskEntity newTask) editSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? saveSuccess,
    TResult? Function(TaskEntity newTask)? editSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? saveSuccess,
    TResult Function(TaskEntity newTask)? editSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TaskState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SaveSuccessImplCopyWith<$Res> {
  factory _$$SaveSuccessImplCopyWith(
          _$SaveSuccessImpl value, $Res Function(_$SaveSuccessImpl) then) =
      __$$SaveSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveSuccessImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$SaveSuccessImpl>
    implements _$$SaveSuccessImplCopyWith<$Res> {
  __$$SaveSuccessImplCopyWithImpl(
      _$SaveSuccessImpl _value, $Res Function(_$SaveSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveSuccessImpl implements _SaveSuccess {
  const _$SaveSuccessImpl();

  @override
  String toString() {
    return 'TaskState.saveSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() saveSuccess,
    required TResult Function(TaskEntity newTask) editSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return saveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? saveSuccess,
    TResult? Function(TaskEntity newTask)? editSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return saveSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? saveSuccess,
    TResult Function(TaskEntity newTask)? editSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return saveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return saveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(this);
    }
    return orElse();
  }
}

abstract class _SaveSuccess implements TaskState {
  const factory _SaveSuccess() = _$SaveSuccessImpl;
}

/// @nodoc
abstract class _$$EditSuccessImplCopyWith<$Res> {
  factory _$$EditSuccessImplCopyWith(
          _$EditSuccessImpl value, $Res Function(_$EditSuccessImpl) then) =
      __$$EditSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity newTask});

  $TaskEntityCopyWith<$Res> get newTask;
}

/// @nodoc
class __$$EditSuccessImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$EditSuccessImpl>
    implements _$$EditSuccessImplCopyWith<$Res> {
  __$$EditSuccessImplCopyWithImpl(
      _$EditSuccessImpl _value, $Res Function(_$EditSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTask = null,
  }) {
    return _then(_$EditSuccessImpl(
      null == newTask
          ? _value.newTask
          : newTask // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res> get newTask {
    return $TaskEntityCopyWith<$Res>(_value.newTask, (value) {
      return _then(_value.copyWith(newTask: value));
    });
  }
}

/// @nodoc

class _$EditSuccessImpl implements _EditSuccess {
  const _$EditSuccessImpl(this.newTask);

  @override
  final TaskEntity newTask;

  @override
  String toString() {
    return 'TaskState.editSuccess(newTask: $newTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSuccessImpl &&
            (identical(other.newTask, newTask) || other.newTask == newTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSuccessImplCopyWith<_$EditSuccessImpl> get copyWith =>
      __$$EditSuccessImplCopyWithImpl<_$EditSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() saveSuccess,
    required TResult Function(TaskEntity newTask) editSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return editSuccess(newTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? saveSuccess,
    TResult? Function(TaskEntity newTask)? editSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return editSuccess?.call(newTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? saveSuccess,
    TResult Function(TaskEntity newTask)? editSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (editSuccess != null) {
      return editSuccess(newTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return editSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return editSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (editSuccess != null) {
      return editSuccess(this);
    }
    return orElse();
  }
}

abstract class _EditSuccess implements TaskState {
  const factory _EditSuccess(final TaskEntity newTask) = _$EditSuccessImpl;

  TaskEntity get newTask;
  @JsonKey(ignore: true)
  _$$EditSuccessImplCopyWith<_$EditSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteSuccessImpl implements _DeleteSuccess {
  const _$DeleteSuccessImpl();

  @override
  String toString() {
    return 'TaskState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() saveSuccess,
    required TResult Function(TaskEntity newTask) editSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? saveSuccess,
    TResult? Function(TaskEntity newTask)? editSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? saveSuccess,
    TResult Function(TaskEntity newTask)? editSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements TaskState {
  const factory _DeleteSuccess() = _$DeleteSuccessImpl;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskFailure taskFailure});

  $TaskFailureCopyWith<$Res> get taskFailure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskFailure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == taskFailure
          ? _value.taskFailure
          : taskFailure // ignore: cast_nullable_to_non_nullable
              as TaskFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskFailureCopyWith<$Res> get taskFailure {
    return $TaskFailureCopyWith<$Res>(_value.taskFailure, (value) {
      return _then(_value.copyWith(taskFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.taskFailure);

  @override
  final TaskFailure taskFailure;

  @override
  String toString() {
    return 'TaskState.loadFailure(taskFailure: $taskFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.taskFailure, taskFailure) ||
                other.taskFailure == taskFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() saveSuccess,
    required TResult Function(TaskEntity newTask) editSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return loadFailure(taskFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? saveSuccess,
    TResult? Function(TaskEntity newTask)? editSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return loadFailure?.call(taskFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? saveSuccess,
    TResult Function(TaskEntity newTask)? editSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(taskFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements TaskState {
  const factory _LoadFailure(final TaskFailure taskFailure) = _$LoadFailureImpl;

  TaskFailure get taskFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
