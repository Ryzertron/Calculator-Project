import 'package:calculator/functions/arithmetic_functions.dart';
import 'package:calculator/screens/screen_home.dart';
import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  final String label;

  const NumButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: OutlinedButton(
            style: const ButtonStyle(enableFeedback: true),
            onPressed: () {
              inputNumber(inputNumber: label);
            },
            child: Text(
              label,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white),
            )),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String label;

  const ActionButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: OutlinedButton(
          style: const ButtonStyle(enableFeedback: true),
          onPressed: () {
            if (label == '+') {
              addFunction();
            } else if (label == '−') {
              subFunction();
            } else if (label == '×') {
              multiplyFunction();
            } else if (label == '÷') {
              divFunction();
            } else if (label == 'C') {
              clearFunction();
            } else if (label == '⌫') {
              backSpace();
            } else if (label == '=') {
              answerfunction();
            } else if (label == 'π') {
              piFunction();
            } else if (label == '•') {
              if (decimalValidate() == true) {
                inputNumber(inputNumber: '.');
              }
            } else if (label == '%') {
              if (percentageFunction()) {
                multiplyFunction();
                Output.value = '100';
                answerfunction();
              }
            }
          },
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
