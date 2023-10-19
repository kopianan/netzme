import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PresentPage extends StatelessWidget {
  const PresentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text("Past Page")),
    );
  }
}
