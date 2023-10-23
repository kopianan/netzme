// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEntity {
  String? get id => throw _privateConstructorUsedError;
  String get taskName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  DateTime get updatedDate => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEntityCopyWith<TaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntityCopyWith<$Res> {
  factory $TaskEntityCopyWith(
          TaskEntity value, $Res Function(TaskEntity) then) =
      _$TaskEntityCopyWithImpl<$Res, TaskEntity>;
  @useResult
  $Res call(
      {String? id,
      String taskName,
      String description,
      DateTime createdDate,
      DateTime updatedDate,
      bool isFinished});
}

/// @nodoc
class _$TaskEntityCopyWithImpl<$Res, $Val extends TaskEntity>
    implements $TaskEntityCopyWith<$Res> {
  _$TaskEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? taskName = null,
    Object? description = null,
    Object? createdDate = null,
    Object? updatedDate = null,
    Object? isFinished = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskEntityImplCopyWith<$Res>
    implements $TaskEntityCopyWith<$Res> {
  factory _$$TaskEntityImplCopyWith(
          _$TaskEntityImpl value, $Res Function(_$TaskEntityImpl) then) =
      __$$TaskEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String taskName,
      String description,
      DateTime createdDate,
      DateTime updatedDate,
      bool isFinished});
}

/// @nodoc
class __$$TaskEntityImplCopyWithImpl<$Res>
    extends _$TaskEntityCopyWithImpl<$Res, _$TaskEntityImpl>
    implements _$$TaskEntityImplCopyWith<$Res> {
  __$$TaskEntityImplCopyWithImpl(
      _$TaskEntityImpl _value, $Res Function(_$TaskEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? taskName = null,
    Object? description = null,
    Object? createdDate = null,
    Object? updatedDate = null,
    Object? isFinished = null,
  }) {
    return _then(_$TaskEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaskEntityImpl implements _TaskEntity {
  _$TaskEntityImpl(
      {this.id,
      required this.taskName,
      required this.description,
      required this.createdDate,
      required this.updatedDate,
      required this.isFinished});

  @override
  final String? id;
  @override
  final String taskName;
  @override
  final String description;
  @override
  final DateTime createdDate;
  @override
  final DateTime updatedDate;
  @override
  final bool isFinished;

  @override
  String toString() {
    return 'TaskEntity(id: $id, taskName: $taskName, description: $description, createdDate: $createdDate, updatedDate: $updatedDate, isFinished: $isFinished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, taskName, description,
      createdDate, updatedDate, isFinished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      __$$TaskEntityImplCopyWithImpl<_$TaskEntityImpl>(this, _$identity);
}

abstract class _TaskEntity implements TaskEntity {
  factory _TaskEntity(
      {final String? id,
      required final String taskName,
      required final String description,
      required final DateTime createdDate,
      required final DateTime updatedDate,
      required final bool isFinished}) = _$TaskEntityImpl;

  @override
  String? get id;
  @override
  String get taskName;
  @override
  String get description;
  @override
  DateTime get createdDate;
  @override
  DateTime get updatedDate;
  @override
  bool get isFinished;
  @override
  @JsonKey(ignore: true)
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
