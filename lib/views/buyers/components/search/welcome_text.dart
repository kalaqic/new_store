import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(top: 16, left: 13),
    child: Row(
      children: const [
        SafeArea(
          child: Text(
            'What are you looking for? 👀',
          style: TextStyle(
            fontSize: 15,
          ),
          ),
        ),
      ],
    ),
          );
  }
}