import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:netzme/application/auth/cubit/auth_cubit.dart';
import 'package:netzme/application/authentication/cubit/authentication_cubit.dart';
import 'package:netzme/injection.dart';
import 'package:netzme/routes/app_router.dart';
import 'package:sign_in_button/sign_in_button.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              authenticated: (e) {
                getIt<AuthenticationCubit>().setAuthentication(
                  true,
                  user: e.user,
                );
              getIt<AppRouter>().replaceAll([const HomeRoute()]);
              },
              unauthenticated: (e) {
                getIt<AuthenticationCubit>().setAuthentication(false);
              },
            );
          },
          builder: (context, state) => Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/icons/welcome-back.png',
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Selamat Datang,",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const Text(
                  "Silahkan masuk untuk memulai",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: SignInButton(
                    Buttons.google,
                    onPressed: () {
                      context.read<AuthCubit>().signInWithGoogle();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
