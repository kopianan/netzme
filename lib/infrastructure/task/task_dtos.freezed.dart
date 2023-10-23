// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDtos _$TaskDtosFromJson(Map<String, dynamic> json) {
  return _TaskDtos.fromJson(json);
}

/// @nodoc
mixin _$TaskDtos {
  @JsonKey(includeToJson: false, includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  String get taskName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime get createdDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime get updatedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDtosCopyWith<TaskDtos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDtosCopyWith<$Res> {
  factory $TaskDtosCopyWith(TaskDtos value, $Res Function(TaskDtos) then) =
      _$TaskDtosCopyWithImpl<$Res, TaskDtos>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeIfNull: false) String? id,
      String taskName,
      String description,
      bool isFinished,
      @TimestampSerializer() DateTime createdDate,
      @TimestampSerializer() DateTime updatedDate});
}

/// @nodoc
class _$TaskDtosCopyWithImpl<$Res, $Val extends TaskDtos>
    implements $TaskDtosCopyWith<$Res> {
  _$TaskDtosCopyWithImpl(this._value, this._then);

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
    Object? isFinished = null,
    Object? createdDate = null,
    Object? updatedDate = null,
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
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDtosImplCopyWith<$Res>
    implements $TaskDtosCopyWith<$Res> {
  factory _$$TaskDtosImplCopyWith(
          _$TaskDtosImpl value, $Res Function(_$TaskDtosImpl) then) =
      __$$TaskDtosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeIfNull: false) String? id,
      String taskName,
      String description,
      bool isFinished,
      @TimestampSerializer() DateTime createdDate,
      @TimestampSerializer() DateTime updatedDate});
}

/// @nodoc
class __$$TaskDtosImplCopyWithImpl<$Res>
    extends _$TaskDtosCopyWithImpl<$Res, _$TaskDtosImpl>
    implements _$$TaskDtosImplCopyWith<$Res> {
  __$$TaskDtosImplCopyWithImpl(
      _$TaskDtosImpl _value, $Res Function(_$TaskDtosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? taskName = null,
    Object? description = null,
    Object? isFinished = null,
    Object? createdDate = null,
    Object? updatedDate = null,
  }) {
    return _then(_$TaskDtosImpl(
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
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDtosImpl implements _TaskDtos {
  _$TaskDtosImpl(
      {@JsonKey(includeToJson: false, includeIfNull: false) this.id,
      required this.taskName,
      required this.description,
      this.isFinished = false,
      @TimestampSerializer() required this.createdDate,
      @TimestampSerializer() required this.updatedDate});

  factory _$TaskDtosImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskDtosImplFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeIfNull: false)
  final String? id;
  @override
  final String taskName;
  @override
  final String description;
  @override
  @JsonKey()
  final bool isFinished;
  @override
  @TimestampSerializer()
  final DateTime createdDate;
  @override
  @TimestampSerializer()
  final DateTime updatedDate;

  @override
  String toString() {
    return 'TaskDtos(id: $id, taskName: $taskName, description: $description, isFinished: $isFinished, createdDate: $createdDate, updatedDate: $updatedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDtosImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, taskName, description,
      isFinished, createdDate, updatedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDtosImplCopyWith<_$TaskDtosImpl> get copyWith =>
      __$$TaskDtosImplCopyWithImpl<_$TaskDtosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDtosImplToJson(
      this,
    );
  }
}

abstract class _TaskDtos implements TaskDtos {
  factory _TaskDtos(
      {@JsonKey(includeToJson: false, includeIfNull: false) final String? id,
      required final String taskName,
      required final String description,
      final bool isFinished,
      @TimestampSerializer() required final DateTime createdDate,
      @TimestampSerializer()
      required final DateTime updatedDate}) = _$TaskDtosImpl;

  factory _TaskDtos.fromJson(Map<String, dynamic> json) =
      _$TaskDtosImpl.fromJson;

  @override
  @JsonKey(includeToJson: false, includeIfNull: false)
  String? get id;
  @override
  String get taskName;
  @override
  String get description;
  @override
  bool get isFinished;
  @override
  @TimestampSerializer()
  DateTime get createdDate;
  @override
  @TimestampSerializer()
  DateTime get updatedDate;
  @override
  @JsonKey(ignore: true)
  _$$TaskDtosImplCopyWith<_$TaskDtosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
