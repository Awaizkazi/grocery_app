import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.all(90.0),
            child: Image.asset('lib/images/avocado.png'),
          ),
          // We Deliver groceries at your doorstep

          // Fresh items everyday

          // get Started button
        ],
      ),
    );
  }
}
