import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:netzme/application/cubit/task_edit_cubit.dart';
import 'package:netzme/application/task/task_cubit.dart';
import 'package:netzme/core/flush_mixin.dart';
import 'package:netzme/domain/task/task_entity.dart';

import 'package:netzme/injection.dart';
import 'package:netzme/routes/app_router.dart';
import 'package:netzme/utils/date_util.dart';

@RoutePage()
class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> with FlushMixin {
  final nameC = TextEditingController();
  final descC = TextEditingController();
  int? value;
  late TaskEditCubit editTaskCubit;
  @override
  void initState() {
    editTaskCubit = context.read<TaskEditCubit>();
    if (editTaskCubit.state.isEdit) {
      final singleTask = editTaskCubit.state.task;
      nameC.text = singleTask?.taskName ?? "";
      descC.text = singleTask?.description ?? "";
      value = DateUtil.getValueByDate(singleTask!.createdDate);
      if (value! < 0) {
        value = null;
      }
    }
    super.initState();
  }

  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    editTaskCubit.removeTask();
    super.dispose();
  }

  final taskCubit = getIt<TaskCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => taskCubit,
        child: BlocListener<TaskCubit, TaskState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {
                  EasyLoading.dismiss();
                },
                loading: (e) {
                  EasyLoading.show();
                },
                editSuccess: (e) {
                  EasyLoading.dismiss();
                  editTaskCubit.setTask(e.newTask);
                  showSnackbar(
                    context,
                    title: "Edit!",
                    message: "Berhasil Edit tugas",
                    type: FlushType.success,
                  );
                },
                saveSuccess: (e) {
                  EasyLoading.dismiss();
                  getIt<AppRouter>().pop().then((value) => showSnackbar(
                        context,
                        title: "Tambah!",
                        message: "Berhasil Tambah tugas",
                        type: FlushType.success,
                      ));
                },
                deleteSuccess: (e) {
                  EasyLoading.dismiss();
                  getIt<AppRouter>().popUntilRouteWithName(HomeRoute.name);
                  showSnackbar(
                    context,
                    title: "Hapus!",
                    message: "Berhasil Hapus tugas",
                    type: FlushType.success,
                  );
                },
              );
            },
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: BlocBuilder<TaskEditCubit, TaskEditState>(
                  builder: (context, state) {
                    return Text(state.isEdit ? "Edit" : "Tambah");
                  },
                ),
                actions: [
                  Visibility(
                    visible: editTaskCubit.state.isEdit,
                    child: IconButton(
                      onPressed: () {
                        //remove item here.
                        if (editTaskCubit.state.getTaskEdit.id != null) {
                          showAdaptiveDialog(
                            useRootNavigator: false,
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: const Text("Hapus Tugas"),
                                content: const Text(
                                    "Kamu yakin ingin menghapus tugas ini ? "),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      taskCubit.removeTask(
                                          editTaskCubit.state.getTaskEdit.id!);
                                    },
                                    child: const Text("Hapus"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      getIt<AppRouter>().pop();
                                    },
                                    child: const Text(
                                      "Batal",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      icon: const Icon(
                        Icons.delete,
                      ),
                    ),
                  )
                ],
              ),
              body: SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tambah Tugas",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          controller: nameC,
                          validator: (e) {
                            if (e!.isEmpty) {
                              return "Tidak boleh kosong";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "Nama Jadwal",
                              border: OutlineInputBorder(),
                              labelText: "Nama Jadwal *"),
                        ),
                        const SizedBox(height: 20),
                        DropdownButtonFormField(
                          validator: (e) {
                            if (e == null) {
                              return "Harus pilih salah satu";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "Waktu",
                              border: OutlineInputBorder(),
                              labelText: "Waktu *"),
                          items: const [
                            DropdownMenuItem<int>(
                                value: 0, child: Text("Hari ini")),
                            DropdownMenuItem<int>(
                                value: 1, child: Text("Besok")),
                          ],
                          value: value,
                          onChanged: (e) {
                            print(e);
                            value = e;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: descC,
                          minLines: 8,
                          maxLines: 12,
                          validator: (e) {
                            if (e!.isEmpty) {
                              return "Tidak boleh kosong";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              alignLabelWithHint: true,
                              hintText: "Deskripsi",
                              border: OutlineInputBorder(),
                              labelText: "Deskripsi *"),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: BlocBuilder<TaskEditCubit, TaskEditState>(
                            builder: (context, state) {
                              final diff = DateUtil.getValueByDate(
                                  state.getTaskEdit.createdDate);

                              return ElevatedButton(
                                onPressed: diff < 0
                                    ? null
                                    : () {
                                        if (formKey.currentState!.validate()) {
                                          TaskEntity taskEntity =
                                              state.getTaskEdit;
                                          late DateTime generatedDate;
                                          if (value != null) {
                                            if (value == 0) {
                                              generatedDate =
                                                  DateUtil.getDateWithoutTime();
                                            } else {
                                              generatedDate =
                                                  DateUtil.getDateWithoutTime(
                                                      subsOrAddDay: 1);
                                            }
                                          }

                                          //update task with current data
                                          taskEntity = taskEntity.copyWith(
                                            taskName: nameC.text,
                                            description: descC.text,
                                            createdDate: generatedDate,
                                          );

                                          if (state.isEdit) {
                                            taskCubit
                                                .updateExistingTask(taskEntity);
                                          } else {
                                            taskCubit.saveNewTask(taskEntity);
                                          }
                                        }
                                      },
                                child: Text(state.isEdit ? "UBAH" : "SIMPAN"),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
