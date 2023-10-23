part of 'task_cubit.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.loading() = _Loading;
  const factory TaskState.saveSuccess() = _SaveSuccess;
  const factory TaskState.editSuccess(TaskEntity newTask) = _EditSuccess;
  const factory TaskState.deleteSuccess() = _DeleteSuccess;
  const factory TaskState.loadFailure(TaskFailure taskFailure) = _LoadFailure;
}
