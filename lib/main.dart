import 'package:farm_connect/generated/l10n.dart';
import 'package:farm_connect/pages/shop/shop_controller.dart';
import 'package:farm_connect/routes/app_pages.dart';
import 'package:farm_connect/routes/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  GestureBinding.instance!.resamplingEnabled = true;
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopController>(builder: (controller) {
     return MaterialApp(
        locale: controller.locale.value,
        localizationsDelegates: const [
          S.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        home: GetMaterialApp(
          initialRoute: AppRoutes.SPLASH,
          getPages: AppPages.pages,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          defaultTransition: Transition.fade,
          opaqueRoute: Get.isOpaqueRouteDefault,
          popGesture: Get.isPopGestureEnable,
          builder: (BuildContext context, Widget? child){
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
        ),
      );
    },);
  }
}

