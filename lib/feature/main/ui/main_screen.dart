import 'package:flutter/material.dart';
import 'package:versta/feature/info/ui/info_page.dart';
import 'package:versta/feature/keys/ui/keys_page.dart';

import 'package:versta/utils/colors.dart';
import 'package:versta/widgets/buttons/inline_button.dart';

import '../../intro/ui/intro_screen.dart';

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
          alignment: Alignment.center,
          width: sizeof.width * 0.7,
          padding: const EdgeInsets.symmetric(vertical: 5),
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
              ),
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
            SizedBox(height: 20,),
            Container(
              height: 20,
              alignment: Alignment.center,
              width: sizeof.width * 0.7,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: ['ГЛАВНАЯ', '3-6 ЛЕТ', '1-4 КЛАСС', '5-11 КЛАСС', 'ВЗРОСЛЫЕ', 'ДОП. КУРСЫ', 'АКЦИИ', 'О НАС'].map((e) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                        e,
                        style: const TextStyle(fontSize: 13),
                      ),
                )).toList(),
              ),
            ),
            SizedBox(height: 20,),
            IntroPage(),
            SizedBox(height: 20,),
            const InfoPage(),
            const SizedBox(
              height: 120,
            ),
            // KeysPage()
          ],
        ),
      ),
    );
  }
}
