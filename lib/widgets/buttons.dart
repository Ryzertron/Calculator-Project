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
            onPressed: () {},
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
          onPressed: () {},
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
