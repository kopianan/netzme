import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netzme/domain/task/task_entity.dart';

part 'task_edit_state.dart';
part 'task_edit_cubit.freezed.dart';

@injectable
class TaskEditCubit extends Cubit<TaskEditState> {
  TaskEditCubit() : super(TaskEditState.initial());

  void setTask(TaskEntity task) {
    emit(state.copyWith(task: task));
  }

  void removeTask() {
    emit(state.copyWith(task: null));
  }
}
