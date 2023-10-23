import 'package:auto_route/auto_route.dart';

import 'package:injectable/injectable.dart';
import 'package:netzme/presentation/auth/login/login_page.dart';
import 'package:netzme/presentation/auth/register/register_page.dart';
import 'package:netzme/presentation/home/add_task/add_task_page.dart';
import 'package:netzme/presentation/home/home_page.dart';
import 'package:netzme/presentation/home/pages/future_page.dart';
import 'package:netzme/presentation/home/pages/past_page.dart';
import 'package:netzme/presentation/home/pages/present_page.dart';
import 'package:netzme/presentation/setting/setting_page.dart';
import 'package:netzme/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SettingRoute.page),
        AutoRoute(page: AddTaskRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(page: PastRoute.page),
            AutoRoute(page: PresentRoute.page, initial: true),
            AutoRoute(page: FutureRoute.page),
          ],
        ),
      ];
}
