import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

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
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries to your doorstep',
              style: GoogleFonts.notoSerif(
                  fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          // Fresh items everyday
          Text(
            'Fresh items Everyday',
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          Spacer(),
          // get Started button
          GestureDetector(
            onTap: (() => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return HomePage();
                    }),
                  ),
                )),
            child: Container(
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
          ),
          Spacer(),
        ],
      ),
    );
  }
}
