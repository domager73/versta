import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:versta/utils/colors.dart';
import 'package:versta/widgets/buttons/defoult_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: double.infinity,
      height: size.width * 0.376,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(40),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/main_background.png'),
              fit: BoxFit.fitWidth)),
      child: SizedBox(
        width: size.width * 0.7,
        child: Row(
          children: [
            SizedBox(
              width: size.width * 0.5,
              height: size.width * 0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Английский для детей начальной школa на Речном вокзале',
                    style: TextStyle(
                      fontSize: 64,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/zal.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'С учетом характера именно вашего ребенка',
                        style: TextStyle(fontSize: 26),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CustomButton(
                        width: 360,
                        height: 70,
                        text: 'ЗАПИСАТЬСЯ НА ПРОБНЫЙ УРОК',
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.ff96E0F1,
                            borderRadius: BorderRadius.circular(20)),
                        width: (size.width * 0.5 - 30) / 2,
                        padding: const EdgeInsets.all(15),
                        height: 120,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/zal.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Бесплатный разговорный клуб',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'для отработки навыков общения',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.ff96E0F1,
                            borderRadius: BorderRadius.circular(20)),
                        width: (size.width * 0.5 - 30) / 2,
                        padding: const EdgeInsets.all(15),
                        height: 120,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/zal.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Приложение для закрепления',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'пройденного материала',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 15,),
            Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.35,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/girl.png'),
                    fit: BoxFit.fitHeight,
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.ff96E0F1,
                            borderRadius: BorderRadius.circular(20)),
                        width: (size.width * 0.5 - 30) / 2,
                        padding: const EdgeInsets.all(15),
                        height: 120,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/zal.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Приложение для закрепления',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'пройденного материала',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
