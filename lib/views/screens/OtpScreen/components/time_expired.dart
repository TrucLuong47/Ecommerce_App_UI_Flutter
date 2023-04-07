import 'package:flutter/material.dart';

class TimeExpired extends StatelessWidget {
  const TimeExpired({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('This code will expired in '),
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 59, end: 0),
          duration: const Duration(seconds: 59),
          builder: (context, value, child) {
            return Text(
              "00:${value.toInt().toString().padLeft(2, '0')}",
              style: const TextStyle(color: Colors.red),
            );
          },
        ),
      ],
    );
  }
}
