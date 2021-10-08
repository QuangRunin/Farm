import 'package:farm_connect/common/images.dart';
import 'package:farm_connect/common/styles.dart';
import 'package:farm_connect/components/button_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomAppBar extends AppBar {
  CustomAppBar({Key? key,
    BuildContext? context,
    String? title,
    Widget? customTitle,
    VoidCallback? onBackAction,
    List<Widget>? actions ,
    double? elevation = 1.0,
    Widget? bottom,
    bool? showBackIcon = true,
    bool? backShadow = true,
    bool? automaticallyImplyLeading = false,
    bool? centerTitle = true,
    dynamic backColor = whiteColor,
    dynamic backgroundColor = whiteColor,
    dynamic backBackgroundColor = whiteColor,
  }) : super(key: key,
    title: title != null || centerTitle != null ? (title != null ? Text(title, style: appbarStyle) : customTitle) : null,
    automaticallyImplyLeading: automaticallyImplyLeading!,
    backgroundColor:  backgroundColor,
    leading: showBackIcon! ?  ButtonIcon(
      icon: backIcon,
      onPressed: () => onBackAction != null ? onBackAction() : Get.back()
    ) :null,
    centerTitle: centerTitle,
    actions: actions,
    elevation: elevation,
    //bottom:bottom,
  );
}