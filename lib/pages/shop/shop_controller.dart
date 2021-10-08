import 'dart:ui';

import 'package:farm_connect/main.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  var locale = const Locale('vi').obs;
  @override
  Future<void> onInit() async{
    // TODO: implement onInit
    super.onInit();
  }
  changeLanguage({language}){
    switch (language){
      case 'en':
        locale.value = const Locale('en','');
        update();
        break;
      case 'vi':
        locale.value = const Locale('vi','');
        update();
        break;
      case 'jp':
        locale.value = const Locale('jp','');
        update();
    }
  }
}