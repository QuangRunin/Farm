import 'package:farm_connect/common/styles.dart';
import 'package:farm_connect/pages/dash_board/dash_board_binding.dart';
import 'package:farm_connect/pages/dash_board/dash_board_page.dart';
import 'package:farm_connect/pages/splash/splash_binding.dart';
import 'package:farm_connect/pages/splash/splash_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static var pages = [
    GetPage(
        name: AppRoutes.SPLASH,
        page: () => const SplashPage(),
        binding: SplashBinding(),
        transition: Transition.topLevel,
        transitionDuration: const  Duration(milliseconds: timeDuration),
    ),
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => const DashboardPage(),
      binding: DashBoardBinding(),
      transition: Transition.topLevel,
      transitionDuration: const Duration(milliseconds: timeDuration * 2),
    ),
  ];
}
