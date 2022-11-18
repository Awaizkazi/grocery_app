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
            padding:
                const EdgeInsets.only(left: 80, right: 80, bottom: 40, top: 80),
            child: Image.asset('lib/images/avocado.png'),
          ),
          // We Deliver groceries at your doorstep
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries to your doorstep',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          // Fresh items everyday
          const Text('Fresh items Everyday'),
          // get Started button
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
