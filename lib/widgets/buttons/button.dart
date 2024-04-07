import 'package:flutter/material.dart';
import 'package:versta/utils/colors.dart';

class CustomInlineButton extends StatelessWidget {
  const CustomInlineButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.color,
      this.height,
      this.width});

  final String text;
  final VoidCallback onTap;
  final double? width;
  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: height ?? 67,
          width: width ?? double.infinity,
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
              ),
            ],
          ),
        ));
  }
}
