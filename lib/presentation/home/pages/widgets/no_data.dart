import 'package:flutter/material.dart';


class NoData extends StatelessWidget {
  const NoData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/icons/empty-box.png",
          color: Colors.grey,
        ),
        const SizedBox(height: 30),
        const Text(
          "Tidak ada data",
          style: TextStyle(
              fontSize: 30, color: Colors.grey, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
