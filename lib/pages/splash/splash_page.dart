import 'package:farm_connect/common/images.dart';
import 'package:farm_connect/common/styles.dart';
import 'package:farm_connect/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SplashController());
    return Scaffold(
      backgroundColor: baseAppColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("FARM CONNECT" , style: size30BoldWhite),
                Text("Bring smile to farmers", style: size16BoldWhite),
              ],
            )
          ],
        ),
      ),
    );
  }
}
