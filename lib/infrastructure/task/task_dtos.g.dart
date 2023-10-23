// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskDtosImpl _$$TaskDtosImplFromJson(Map<String, dynamic> json) =>
    _$TaskDtosImpl(
      id: json['id'] as String?,
      taskName: json['taskName'] as String,
      description: json['description'] as String,
      isFinished: json['isFinished'] as bool? ?? false,
      createdDate: const TimestampSerializer().fromJson(json['createdDate']),
      updatedDate: const TimestampSerializer().fromJson(json['updatedDate']),
    );

Map<String, dynamic> _$$TaskDtosImplToJson(_$TaskDtosImpl instance) =>
    <String, dynamic>{
      'taskName': instance.taskName,
      'description': instance.description,
      'isFinished': instance.isFinished,
      'createdDate': const TimestampSerializer().toJson(instance.createdDate),
      'updatedDate': const TimestampSerializer().toJson(instance.updatedDate),
    };
