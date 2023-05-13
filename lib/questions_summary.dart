import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['user_answer'] as String,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 15, 88, 213),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['correct_answer'] as String,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 25, 152, 29),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
