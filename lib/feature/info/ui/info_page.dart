import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          InfoItemWidget(
              imagePath: "icon.svg", title: "Bebra", description: "Bebra" * 10),
          InfoItemWidget(
              imagePath: "icon.svg", title: "Bebra", description: "Bebra" * 10),
          InfoItemWidget(
              imagePath: "icon.svg", title: "Bebra", description: "Bebra" * 10),
          InfoItemWidget(
              imagePath: "icon.svg", title: "Bebra", description: "Bebra" * 10),
        ],
      ),
    );
  }
}

class InfoItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const InfoItemWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      child: Column(
        children: [
          Image.asset("icon.svg"),
          const SizedBox(
            height: 23,
          ),
          const Text("Оценка"),
          const SizedBox(
            height: 23,
          ),
          const Text("Дадим экспертную оценку текущим знаниям вашего ребенка"),
          const SizedBox(
            height: 23,
          ),
        ],
      ),
    );
  }
}
