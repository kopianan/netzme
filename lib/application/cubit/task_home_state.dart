part of 'task_home_cubit.dart';

@freezed
class TaskHomeState with _$TaskHomeState {
  const TaskHomeState._();
  const factory TaskHomeState({
    @Default([]) List<TaskEntity> tasks,
    @Default(false) bool isLoading,
    TaskFailure? taskFailure,
  }) = _TaskHomeState;
  factory TaskHomeState.initial() => const TaskHomeState();

  List<TaskEntity> getAllPresentTask() {
    var newTasks = tasks
        .where((element) => DateUtil.getValueByDate(element.createdDate) == 0)
        .toList();

    newTasks.sort(
        (a, b) => (a.isFinished == b.isFinished ? 0 : (a.isFinished ? 1 : -1)));
    return newTasks;
  }

  List<TaskEntity> getAllFutureTask() {
    var newTasks = tasks
        .where((element) => DateUtil.getValueByDate(element.createdDate) == 1)
        .toList();
    newTasks.sort(
        (a, b) => (a.isFinished == b.isFinished ? 0 : (a.isFinished ? 1 : -1)));
    return newTasks;
  }

  List<TaskEntity> getAllLastTask() {
    var newTasks = tasks.where(
      (element) {
        return DateUtil.getValueByDate(element.createdDate) == -1;
      },
    ).toList();
    newTasks.sort(
        (a, b) => (a.isFinished == b.isFinished ? 0 : (a.isFinished ? 1 : -1)));
    return newTasks;
  }
}
