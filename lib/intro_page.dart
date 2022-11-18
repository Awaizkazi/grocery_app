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
            padding: const EdgeInsets.all(80.0),
            child: Image.asset('lib/images/avocado.png'),
          ),
          // We Deliver groceries at your doorstep
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries to your doorstep',
              style: TextStyle(fontSize: 30),
            ),
          ),
          // Fresh items everyday

          // get Started button
        ],
      ),
    );
  }
}
