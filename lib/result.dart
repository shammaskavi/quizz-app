import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 100 && resultScore < 160) {
      resultText = "Beauty ðĩ";
    } else if (resultScore > 160 && resultScore >= 170 && resultScore <= 250) {
      resultText = "Courage ðĪĄ";
    } else if (resultScore > 250 && resultScore >= 260 && resultScore <= 330) {
      resultText = "Sense of humor ðĪŠ";
    } else if (resultScore > 330 && resultScore >= 340 && resultScore <= 420) {
      resultText = "Selfishness ð";
    } else if (resultScore > 420 && resultScore >= 340 && resultScore <= 420) {
      resultText = "Compassion ðââïļ";
    } else {
      resultText = "No one likes you!! ðĒ";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        TextButton(
          onPressed: resetHandler,
          child: const Text(
            "Restart Quiz",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ],
    );
  }
}
