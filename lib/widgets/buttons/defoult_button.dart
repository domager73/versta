import 'package:flutter/material.dart';
import 'package:versta/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        required this.text,
        required this.onTap,
        this.height,
        this.width});

  final String text;
  final VoidCallback onTap;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.buttonBg,
            borderRadius: BorderRadius.circular(18),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ));
  }
}
