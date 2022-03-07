import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.all(5),
      // child: RaisedButton(
      // this is how to style raised button
      // which is now depricated in latest ver of Flutter
      //     color: Colors.blue,
      //     textColor: Colors.white,
      //     child: Text(answerText),
      //     onPressed: selectHandler),

      // child: ElevatedButton(
      //   style: ButtonStyle(
      //     backgroundColor: MaterialStateProperty.all(Colors.blue),
      //   ),
      //   child: Text(answerText),
      //   onPressed: selectHandler,
      // ),

      child: OutlineButton(
        borderSide: const BorderSide(
          color: Colors.blue,
        ),
        textColor: Colors.blue,
        child: Center(
          child: Text(
            answerText,
            textAlign: TextAlign.center,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}

// 
