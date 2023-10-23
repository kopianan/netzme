import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netzme/application/auth/cubit/auth_cubit.dart';
import 'package:netzme/application/authentication/cubit/authentication_cubit.dart';
import 'package:netzme/injection.dart';
import 'package:netzme/routes/app_router.dart';

@RoutePage()
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          getIt<AuthenticationCubit>().logOut();
          getIt<AppRouter>().replaceAll([const SplashRoute()]); 
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Setting"),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 30),
                Image.asset(
                  'assets/icons/bye.png',
                  width: 200,
                  color: Colors.grey,
                ),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return TextButton(
                        onPressed: () {
                          context.read<AuthCubit>().logOut();
                        },
                        child: const Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
