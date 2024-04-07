import 'package:flutter/material.dart';
import 'package:versta/utils/colors.dart';
import 'package:versta/widgets/wrapper/wrapper.dart';

class KeysPage extends StatefulWidget {
  const KeysPage({super.key});

  @override
  State<KeysPage> createState() => _KeysPageState();
}

class _KeysPageState extends State<KeysPage> {
  @override
  Widget build(BuildContext context) {
    return  Wrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Дополнительные ценности"),
          SizedBox(
            height: 48,
          ),
          KeysItemWidget(
              text:
                  """Каждый новый ученик проходит обязательное письменное и устное тестирование  с методистом. Методист обладает не только знаниями иностранного языка, а также разбирается в возрастной психологии, типологии личности и мотивации.

На встрече методист определяет уровень языка, сильные и слабые навыки ученика по предмету, наблюдает за особенностями характера ученика и способами восприятия информации. На основе этих наблюдений и результатов теста подбирает наиболее подходящую по уровню и темпераменту группу и преподавателя, а также дает развернутую обратную связь родителю.""",
              pose: ImagePosition.right,
              title: "Тестирование и консультация методиста", color: AppColors.cFFE483,),
          KeysItemWidget(
              text:
                  """Каждый новый ученик проходит обязательное письменное и устное тестирование  с методистом. Методист обладает не только знаниями иностранного языка, а также разбирается в возрастной психологии, типологии личности и мотивации.

На встрече методист определяет уровень языка, сильные и слабые навыки ученика по предмету, наблюдает за особенностями характера ученика и способами восприятия информации. На основе этих наблюдений и результатов теста подбирает наиболее подходящую по уровню и темпераменту группу и преподавателя, а также дает развернутую обратную связь родителю.""",
              pose: ImagePosition.left,
              title: "Тестирование и консультация методиста", color: AppColors.cD9D0FF),
          KeysItemWidget(
              text:
                  """Каждый новый ученик проходит обязательное письменное и устное тестирование  с методистом. Методист обладает не только знаниями иностранного языка, а также разбирается в возрастной психологии, типологии личности и мотивации.

На встрече методист определяет уровень языка, сильные и слабые навыки ученика по предмету, наблюдает за особенностями характера ученика и способами восприятия информации. На основе этих наблюдений и результатов теста подбирает наиболее подходящую по уровню и темпераменту группу и преподавателя, а также дает развернутую обратную связь родителю.""",
              pose: ImagePosition.right,
              title: "Тестирование и консультация методиста", color: AppColors.cFFE483,),
        ],
      ),
    );
  }
}

enum ImagePosition { left, right }

class KeysItemWidget extends StatelessWidget {
  final String title;
  final String text;
  final ImagePosition pose;
  final Color color;

  const KeysItemWidget(
      {super.key, required this.title, required this.text, required this.pose, required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    List<Widget> content = [
      Image.asset("assets/invalidi.png"),
      SizedBox(
        width: size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(text),
          ],
        ),
      )
    ];

    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: pose != ImagePosition.left ? content : content.reversed.toList()
      ),
    );
  }
}
