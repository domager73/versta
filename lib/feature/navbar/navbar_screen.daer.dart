import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.sizeOf(context);
    return Container(
      width: sizeof.width,
      height: 495,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/block 15.png'))),
    );
  }
}
