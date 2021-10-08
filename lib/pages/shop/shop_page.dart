import 'package:farm_connect/common/images.dart';
import 'package:farm_connect/components/button_icon.dart';
import 'package:farm_connect/components/custom_appbar.dart';
import 'package:farm_connect/pages/shop/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ShopController());
    return Scaffold(
      appBar: CustomAppBar(
        showBackIcon: false,
        actions:   [
          ButtonIcon(
            icon: storeIcon,
            onPressed: (){
              Get.bottomSheet(
                Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      InkWell(
                        child: Text("EN....."),
                        onTap: () =>  controller.changeLanguage(language: 'en'),
                      ),
                      InkWell(
                        child: Text("JP...."),
                        onTap: () =>  controller.changeLanguage(language: 'jp'),
                      ),
                      InkWell(
                        child: Text("VN...."),
                        onTap: () =>  controller.changeLanguage(language: 'vi'),
                      ),
                    ],
                  ),
                ),

              );
            },
          )
        ],
      ),
    );
  }
}
