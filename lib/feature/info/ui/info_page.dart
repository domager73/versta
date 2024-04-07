import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:versta/utils/colors.dart';
import 'package:versta/utils/fonts.dart';
import 'package:versta/widgets/wrapper/wrapper.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Wrapper(      
      child: Wrap(
        children: [
          InfoItemWidget(
            imagePath: "icon.svg",
            title: "Bebra",
            description: "Bebra" * 10,
            color: AppColors.cFFE483,
          ),
          InfoItemWidget(
              imagePath: "icon.svg",
              title: "Группа",
              description:
                  "Подберем группу с учетом характераи пожеланий ученика",
              color: AppColors.cD9D0FF),
          InfoItemWidget(
              imagePath: "icon.svg",
              title: "Обратная связь",
              description:
                  "Дадим обратную связь в любой точке процесса обучения",
              color: AppColors.cFFE483),
          InfoItemWidget(
              imagePath: "icon.svg",
              title: "Процесс",
              description: "Отслеживаем и четко измеряем прогресс",
              color: AppColors.cD9D0FF),
        ],
      ),
    );
  }
}

class InfoItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final Color color;

  const InfoItemWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.color,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13),
      width: 280,
      height: 280,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/$imagePath"),
          const SizedBox(
            height: 23,
          ),
          Text(title,),
          const SizedBox(
            height: 23,
          ),
          Text(description),
        ],
      ),
    );
  }
}
