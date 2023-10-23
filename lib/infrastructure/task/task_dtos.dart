import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netzme/domain/task/task_entity.dart';
import 'package:netzme/utils/date_util.dart';

part 'task_dtos.freezed.dart';
part 'task_dtos.g.dart';

@freezed
class TaskDtos with _$TaskDtos {
  factory TaskDtos({
    @JsonKey(includeToJson: false, includeIfNull: false) String? id,
    required String taskName,
    required String description,
    @Default(false) bool isFinished,
    @TimestampSerializer() required DateTime createdDate,
    @TimestampSerializer() required DateTime updatedDate,
  }) = _TaskDtos;

  factory TaskDtos.fromJson(Map<String, dynamic> json) =>
      _$TaskDtosFromJson(json);

  factory TaskDtos.fromFirestore(DocumentSnapshot doc) {
    return TaskDtos.fromJson(doc.data() as dynamic).copyWith(
      id: doc.id,
    );
  }

  factory TaskDtos.fromDomain(TaskEntity task) {
    return TaskDtos(
      updatedDate: task.updatedDate,
      taskName: task.taskName,
      description: task.description,
      createdDate: task.createdDate,
      isFinished: task.isFinished,
      id: task.id,
    );
  }
}

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

extension TaskDtosX on TaskDtos {
  TaskEntity toDomain() {
    return TaskEntity(
      id: id,
      isFinished: isFinished,
      taskName: taskName,
      updatedDate: createdDate,
      description: description,
      createdDate: createdDate,
    );
  }
}
