
import 'package:flutter/material.dart';
import 'package:versta/feature/info/ui/info_page.dart';

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
        title: Container(
          width: sizeof.width * 0.6,
          child: Row(
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 202, maxHeight: 60),
                child: Image.asset(
                  'logo.png',
                  width: sizeof.width * 0.2,
                  height: sizeof.width * 0.06,
                ),
              ),
              const Spacer(),
              CustomInlineButton(
                text: 'Пройти онлайн-тест',
                onTap: () {},
                height: sizeof.width * 0.043,
              ),
              const SizedBox(
                width: 15,
              ),
              CustomInlineButton(
                text: 'Записаться на пробные уроки',
                onTap: () {},
                height: sizeof.width * 0.043,
              ),
              const Spacer(),
              const Column(
                children: [
                  Text(
                    '+7 (495) 142-42-59',
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    '+7 (495) 142-42-59',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: sizeof.width,
            ),
            InfoPage(),
            const SizedBox(
              height: 120,
            ),
            KeysPage(),
          ],
        ),
      ),
    );
  }
}
