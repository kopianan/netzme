part of 'task_edit_cubit.dart';

@freezed
class TaskEditState with _$TaskEditState {
  const TaskEditState._();
  const factory TaskEditState({
    TaskEntity? task,
  }) = _TaskEditState;
  factory TaskEditState.initial() => const TaskEditState();

  bool get isEdit {
    if (task == null) {
      return false;
    }
    return true;
  }

  TaskEntity get getTaskEdit {
    return isEdit ? task ?? TaskEntity.empty() : TaskEntity.empty();
  }
}
