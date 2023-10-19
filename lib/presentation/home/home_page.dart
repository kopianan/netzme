import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:netzme/routes/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Colors.green,
      routes: const [
        FutureRoute(),
        PresentRoute(),
        PastRoute(),
      ],
      floatingActionButton:
          FloatingActionButton(
            shape: const OvalBorder(),
            onPressed: () {}, child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBuilder: (context, tab) {
        return BottomNavigationBar(
            currentIndex: tab.activeIndex,
            onTap: (e) {
              tab.setActiveIndex(e);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: "Kemarin",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: "Sekarang",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: "Besok",
              ),
            ]);
      },
    );
  }
}
