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
          Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            child: Column(
              children: [
                Image.asset("icon.svg"),
                const SizedBox(
                  height: 23,
                ),
                Text("Оценка"),
                const SizedBox(
                  height: 23,
                ),
                Text("Дадим экспертную оценку текущим знаниям вашего ребенка"),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
