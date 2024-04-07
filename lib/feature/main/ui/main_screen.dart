import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:versta/utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appbar,
        title: Row(
          children: [
            Image.asset('logo.png', width: sizeof.width * 0.2, height: sizeof.width * 0.06,),

          ],
        ),
      ),
    );
  }
}
