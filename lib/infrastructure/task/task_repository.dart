import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:netzme/domain/task/i_task.dart';
import 'package:netzme/domain/task/task_failure.dart';
import 'package:netzme/infrastructure/task/task_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:netzme/domain/task/task_entity.dart' as task;

@LazySingleton(as: ITask)
class TaskRepository implements ITask {
  final FirebaseFirestore _firestore;
  TaskRepository(this._firestore);

  @override
  Stream<Either<TaskFailure, List<task.TaskEntity>>> streamAllTask() async* {
    yield* _firestore.collection('tasks').snapshots().map(
      (snapshot) {
        return right<TaskFailure, List<task.TaskEntity>>(
          snapshot.docs
              .map((doc) => TaskDtos.fromFirestore(doc).toDomain())
              .toList(),
        );
      },
    ).onErrorReturnWith(
      (error, stackTrace) => left(
        const TaskFailure.unexpected(),
      ),
    );
  }

  @override
  Future<Either<TaskFailure, Unit>> saveTask(task.TaskEntity task) async {
    return _firestore
        .collection('tasks')
        .add(TaskDtos.fromDomain(task).toJson())
        .then((value) => const Right(unit));
  }

  @override
  Future<Either<TaskFailure, Unit>> update(task.TaskEntity task) {
    return _firestore
        .collection('tasks')
        .doc(task.id)
        .update(TaskDtos.fromDomain(task).toJson())
        .then((value) => const Right(unit));
  }

  @override
  Future<Either<TaskFailure, Unit>> remove(String taskId) async {
    return _firestore
        .collection('tasks')
        .doc(taskId)
        .delete()
        .then((value) => const Right(unit));
  }
}
