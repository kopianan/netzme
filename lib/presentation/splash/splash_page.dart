import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netzme/application/auth/cubit/auth_cubit.dart';
import 'package:netzme/injection.dart';
import 'package:netzme/routes/app_router.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>()..checkAuth(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          print("STATE"); 
          state.map(
            initial: (e) {},
            authenticated: (e) {
              print("Au");
              getIt<AppRouter>().replaceAll([const HomeRoute()]);
            },
            unauthenticated: (e) {
              print("UN");
              getIt<AppRouter>().replace(const LoginRoute());
            },
            failure: (e) {
              //show error message
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
          );
        },
      ),
    );
  }
}
