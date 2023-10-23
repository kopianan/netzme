import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netzme/application/cubit/task_edit_cubit.dart';
import 'package:netzme/application/cubit/task_home_cubit.dart';
import 'package:netzme/application/task/task_cubit.dart';
import 'package:netzme/injection.dart';
import 'package:netzme/routes/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TaskHomeCubit>()..streamTask(),
        ),
      ],
      child: BlocConsumer<TaskHomeCubit, TaskHomeState>(
        listener: (context, state) {
          print(state);
        },
        builder: (context, state) {
          return AutoTabsScaffold(
            appBarBuilder: (context, tabsRouter) {
              return AppBar(
                title: const Text("MTask"),
                centerTitle: true,
                actions: [
                  IconButton(
                      onPressed: () {
                        getIt<AppRouter>().push(const SettingRoute());
                      },
                      icon: const Icon(Icons.settings))
                ],
              );
            },
            routes: const [
              PastRoute(),
              PresentRoute(),
              FutureRoute(),
            ],
            floatingActionButton: FloatingActionButton(
                shape: const OvalBorder(),
                onPressed: () {
                  getIt<AppRouter>().push(const AddTaskRoute());
                },
                child: const Icon(Icons.add)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            bottomNavigationBuilder: (context, tab) {
              return BottomNavigationBar(
                  elevation: 10,
                  currentIndex: tab.activeIndex,
                  onTap: (e) {
                    tab.setActiveIndex(e);
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon:
                          Image.asset('assets/icons/yesterday.png', width: 25),
                      label: "Kemarin",
                      activeIcon: Image.asset(
                        'assets/icons/yesterday.png',
                        width: 25,
                        color: Colors.red,
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset('assets/icons/today.png', width: 25),
                      label: "Sekarang",
                      activeIcon: Image.asset(
                        'assets/icons/today.png',
                        width: 25,
                        color: Colors.red,
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset('assets/icons/tomorrow.png', width: 25),
                      label: "Besok",
                      activeIcon: Image.asset(
                        'assets/icons/tomorrow.png',
                        width: 25,
                        color: Colors.red,
                      ),
                    ),
                  ]);
            },
          );
        },
      ),
    );
  }
}
