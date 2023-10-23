import 'package:dartz/dartz.dart';
import 'package:netzme/domain/task/task_failure.dart';
import 'package:netzme/domain/task/task_entity.dart';

abstract class ITask {
  Stream<Either<TaskFailure, List<TaskEntity>>> streamAllTask();
  Future<Either<TaskFailure, Unit>> saveTask(TaskEntity task);
  Future<Either<TaskFailure, Unit>> update(TaskEntity task);

  Future<Either<TaskFailure, Unit>> remove(String taskId);
}
