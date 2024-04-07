import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  final Widget child;

  const Wrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      alignment: Alignment.center,
      width: size.width * 0.8,
      child: child,
    );
  }
}
