import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netzme/domain/task/i_task.dart';
import 'package:netzme/domain/task/task_entity.dart';
import 'package:netzme/domain/task/task_failure.dart';
import 'package:netzme/utils/date_util.dart';

part 'task_home_state.dart';
part 'task_home_cubit.freezed.dart';

@injectable
class TaskHomeCubit extends Cubit<TaskHomeState> {
  TaskHomeCubit(this.iTask) : super(TaskHomeState.initial());
  final ITask iTask;
  StreamSubscription<Either<TaskFailure, List<TaskEntity>>>? _taskSubscription;

  void streamTask() {
    emit(state.copyWith(isLoading: true));
    if (_taskSubscription != null) {
      _taskSubscription!.cancel();
    }

    _taskSubscription = iTask.streamAllTask().listen((event) {
      return taskReceived(event);
    });
  }

  void taskReceived(Either<TaskFailure, List<TaskEntity>> event) {
    emit(state.copyWith(isLoading: true));
    event.fold(
      (l) => emit(state.copyWith(taskFailure: l)),
      (r) => emit(state.copyWith(tasks: r)),
    );
  }
}
