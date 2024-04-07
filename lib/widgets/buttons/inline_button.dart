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
          height: height,
          width: width,
          constraints: BoxConstraints(
            maxHeight: 35,
            minHeight: 30,
            maxWidth: 200,
            minWidth: 180,
          ),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.borderButton,
              width: 1
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ));
  }
}
