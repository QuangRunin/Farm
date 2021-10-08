import 'package:farm_connect/pages/dash_board/dash_board_controller.dart';
import 'package:farm_connect/pages/shop/shop_controller.dart';
import 'package:get/get.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<ShopController>(() => ShopController());
  }

}