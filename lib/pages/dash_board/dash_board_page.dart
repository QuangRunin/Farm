import 'package:farm_connect/common/images.dart';
import 'package:farm_connect/common/styles.dart';
import 'package:farm_connect/pages/dash_board/dash_board_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var controller = Get.put(DashBoardController());
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            resizeToAvoidBottomInset: false,
            body: Obx(()=> IndexedStack(
              index: controller.currentIndex.value,
              children: controller.dashBoardWidgets!,
            )),
            bottomNavigationBar:Theme(
              data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent
              ),
              child: Container(
                height: MediaQuery.of(context).padding.bottom + 50.0,
                color: whiteColor,
                child: Obx(()=> BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: controller.currentIndex.value,
                  selectedItemColor: blackColor,
                  unselectedItemColor: Colors.red,
                  selectedLabelStyle: textBottomActive,
                  unselectedLabelStyle: textBottomDefault,
                  backgroundColor: whiteColor,
                  onTap: (value) async{
                    controller.changeIndex(value);
                  },
                  items: [
                    BottomNavigationBarItem(icon: controller.customIcon(index: 0,icon: storeIcon,showBadge: false),title: const SizedBox()),
                    BottomNavigationBarItem(icon: controller.customIcon(index: 1,icon: discoveryIcon,showBadge: false),title: const SizedBox()),
                    BottomNavigationBarItem(icon: controller.customIcon(index: 2,icon: orderIcon,showBadge: false), title: const SizedBox()),
                    BottomNavigationBarItem(icon: controller.customIcon(index: 3,icon: favoriteIcon,showBadge: true),title: const SizedBox()),
                    BottomNavigationBarItem(icon: controller.customIcon(index: 4,icon: accountIcon,showBadge: false),title: const SizedBox()),
                  ],
                )),
              ),
            )
        ),
      ],
    );
  }
}

