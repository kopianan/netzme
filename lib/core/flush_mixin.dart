import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

mixin FlushMixin {
  void showSnackbar(
    BuildContext context, {
    required String title,
    required String message,
    required FlushType type,
  }) {
    Flushbar(
      title: title,
      flushbarStyle: FlushbarStyle.FLOATING,
      backgroundColor: type.value,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
      barBlur: 0.6,
      message: message,
      duration: const Duration(seconds: 3),
    ).show(context);
  }
}

enum FlushType {
  success(Colors.green),
  warning(Colors.orange),
  error(Colors.red);

  final Color value;
  const FlushType(this.value);
}
