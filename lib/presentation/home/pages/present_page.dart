import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:netzme/application/cubit/task_edit_cubit.dart';
import 'package:netzme/application/cubit/task_home_cubit.dart';
import 'package:netzme/application/task/task_cubit.dart';
import 'package:netzme/core/flush_mixin.dart';
import 'package:netzme/domain/task/task_entity.dart';
import 'package:netzme/injection.dart';
import 'package:netzme/presentation/home/pages/widgets/no_data.dart';
import 'package:netzme/routes/app_router.dart';

import 'widgets/task_list_item.dart';

@RoutePage()
class PresentPage extends StatelessWidget with FlushMixin {
  const PresentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => getIt<TaskCubit>(),
        child: BlocConsumer<TaskCubit, TaskState>(
          listener: (context, taskState) {
            taskState.maybeMap(
              orElse: () {
                EasyLoading.dismiss();
              },
              loading: (e) {
                EasyLoading.show();
              },
              editSuccess: (e) {
                EasyLoading.dismiss();
              },
              deleteSuccess: (value) {
                EasyLoading.dismiss();
                showSnackbar(
                  context,
                  title: "Hapus",
                  message: "Berhasil hapus tugas",
                  type: FlushType.success,
                );
              },
            );
          },
          builder: (context, taskState) {
            return Container(
              child: BlocBuilder<TaskHomeCubit, TaskHomeState>(
                builder: (context, state) {
                  final tasks = state.getAllPresentTask();
                  if (tasks.isEmpty) {
                    return const NoData();
                  }
                  return GroupedListView<TaskEntity, bool>(
                      elements: tasks,
                      groupBy: (e) => e.isFinished,
                      addAutomaticKeepAlives: true,
                      order: GroupedListOrder.ASC,
                      itemComparator: (a, b) => (a.isFinished == b.isFinished
                          ? 0
                          : (a.isFinished ? 1 : -1)),
                      groupHeaderBuilder: (value) => !value.isFinished
                          ? const Text("Rencana",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                          : const Text("Selesai",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                      itemBuilder: (context, single) {
                        return TaskListItem(
                          color: single.isFinished ? Colors.grey : Colors.green,
                          arrow: single.isFinished
                              ? Icons.arrow_circle_up_outlined
                              : Icons.arrow_circle_down_rounded,
                          itemTitle: single.taskName,
                          onActionTap: () {
                            //update status finish
                            final newdata =
                                single.copyWith(isFinished: !single.isFinished);
                            context
                                .read<TaskCubit>()
                                .updateExistingTask(newdata);
                          },
                          onDeleteItem: () {
                            context.read<TaskCubit>().removeTask(single.id!);
                          },
                          onTap: () {
                            context.read<TaskEditCubit>().setTask(single);
                            getIt<AppRouter>().push(const AddTaskRoute());
                          },
                        );
                      });
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
