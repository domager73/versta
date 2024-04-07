import 'package:flutter/material.dart';

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
    return TextButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,),
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
