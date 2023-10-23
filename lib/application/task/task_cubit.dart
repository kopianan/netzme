import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netzme/domain/task/i_task.dart';
import 'package:netzme/domain/task/task_entity.dart';
import 'package:netzme/domain/task/task_failure.dart';

part 'task_state.dart';
part 'task_cubit.freezed.dart';

@injectable
class TaskCubit extends Cubit<TaskState> {
  TaskCubit(this.iTask) : super(const TaskState.initial());
  final ITask iTask;

  void saveNewTask(TaskEntity task) async {
    emit(const TaskState.loading());
    final result = await iTask.saveTask(task);
    await Future.delayed(Duration.zero);
    result.fold(
      (l) => emit(TaskState.loadFailure(l)),
      (r) => emit(const TaskState.saveSuccess()),
    );
  }

  void updateExistingTask(TaskEntity task) async {
    emit(const TaskState.loading());
    final result = await iTask.update(task.copyWith(updatedDate: DateTime.now()));
     
    await Future.delayed(Duration.zero);
    result.fold(
      (l) => emit(TaskState.loadFailure(l)),
      (r) => emit(TaskState.editSuccess(task)),
    );
  }

  void removeTask(String taskId) async {
    emit(const TaskState.loading());
    final result = await iTask.remove(taskId);
    result.fold(
      (l) => emit(TaskState.loadFailure(l)),
      (r) => emit(const TaskState.deleteSuccess()),
    );
  }
}
