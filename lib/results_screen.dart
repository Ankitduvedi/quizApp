import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, //use as much width as possible
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('you answerd 4 questions'),
            const SizedBox(
              height: 30,
            ),
            const Text('list of answrs'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
