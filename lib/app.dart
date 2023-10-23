import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netzme/application/cubit/task_edit_cubit.dart';
import 'package:netzme/injection.dart';
import 'routes/app_router.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class App extends StatelessWidget {
  App({super.key});

  final appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: 'Flutter Demo',
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      builder: EasyLoading.init(
        builder: (context, child) {
          return BlocProvider(
            create: (context) => getIt<TaskEditCubit>(),
            child: child!,
          );
        },
      ),
    );
  }
}
