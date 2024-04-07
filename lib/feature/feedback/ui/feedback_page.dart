import 'package:flutter/material.dart';
import 'package:versta/widgets/wrapper/wrapper.dart';

class FeedbackPage extends StatefulWidget {
  FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  ScrollController controller = ScrollController();

  List<Widget> dataItems = [
    FeedbackWidget(
      sender: 'Антон',
      text: 'я крутой ' * 40,
    ),
    FeedbackWidget(
      sender: 'Антон',
      text: 'я крутой ' * 40,
    ),
    FeedbackWidget(
      sender: 'Антон',
      text: 'я крутой ' * 40,
    ),
    FeedbackWidget(
      sender: 'Антон',
      text: 'я крутой ' * 40,
    ),
    FeedbackWidget(
      sender: 'Антон',
      text: 'я крутой ' * 40,
    ),
    FeedbackWidget(
      sender: 'Антон',
      text: 'я крутой ' * 40,
    ),
    FeedbackWidget(
      sender: 'Антон',
      text: 'я крутой ' * 40,
    ),
    FeedbackWidget(
      sender: 'Антон',
      text: 'я крутой ' * 40,
    ),
  ];

  void nextPage() {
    double newPosition = controller.offset + 350.0;
    newPosition = newPosition.clamp(0.0, controller.position.maxScrollExtent);
    controller.animateTo(
      newPosition,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void previousPage() {
    double newPosition = controller.offset - 350.0;
    newPosition = newPosition.clamp(0.0, double.infinity);
    controller.animateTo(
      newPosition,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Column(
        children: [
          Row(
            children: [
              const Text("Отзывы"),
              const Spacer(),
              IconButton(
                  onPressed: previousPage, icon: const Icon(Icons.arrow_back)),
              IconButton(
                  onPressed: nextPage, icon: const Icon(Icons.arrow_forward))
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: dataItems,
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          
        ],
      ),
    );
  }
}

class FeedbackWidget extends StatelessWidget {
  final String text;
  final String sender;

  const FeedbackWidget({super.key, required this.text, required this.sender});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffFFF3D6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(sender),
          Text(
            text,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
