import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  factory TaskEntity(
      {String? id,
      required String taskName,
      required String description,
      required DateTime createdDate,
      required DateTime updatedDate,
      required bool isFinished}) = _TaskEntity;

  factory TaskEntity.empty() => TaskEntity(
        taskName: "",
        updatedDate: DateTime.now(),
        description: "",
        createdDate: DateTime.now(),
        isFinished: false,
      );
}
 

