import 'package:farm_connect/common/styles.dart';
import 'package:farm_connect/pages/shop/shop_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
  var currentIndex = 0.obs;
  int bottomNvgLastIndex = 0;
  List<Widget>? dashBoardWidgets = <Widget>[
    const ShopPage(),
    const ShopPage(),
    const ShopPage(),
    const ShopPage(),
    const ShopPage(),
  ];
  @override
  Future<void> onInit() async{
    super.onInit();
  }
  void changeIndex(value){
    currentIndex.value = value;
    update();
    if(value == 4){
      // profileController.getUserInfo();
      update();
    }
    else if(value == 3) {

    }
  }
  Widget customIcon({index, icon,showBadge}) {
    return Column(
      children: [
        Image.asset(icon,color: index != currentIndex.value ? blackColor : baseAppColor),
        const SizedBox(height: 2.5),
        showBadge ? Container(
          width: 6.0,
          height: 6.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.0)),
            color: Colors.red,
          ),
        ) :  const SizedBox(height: 5.0)
      ],
    );
  }
  Widget customTitle(index,title) {
    return Text(title,style: index != currentIndex.value ? textBottomDefault : textBottomActive);
  }
}
