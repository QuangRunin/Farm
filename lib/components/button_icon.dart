import 'package:farm_connect/common/images.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ButtonIcon extends StatelessWidget {
  ButtonIcon({Key? key, this.onPressed, this.width, this.height, this.icon}) : super(key: key);
  VoidCallback? onPressed;
  double? width;
  double? height;
  String? icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
          icon!,
          fit: BoxFit.contain,
          width: width,
          height: height,
      ),
      onPressed: onPressed,
    );
  }
}
