import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
