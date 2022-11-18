import 'package:flutter/material.dart';
import 'package:grocery_app/model/cart_model.dart';
import 'package:provider/provider.dart';

import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => Cartmodel()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}



// ! https://www.youtube.com/watch?v=uSljGJGSl6w&t=325s

// Remaining from the 13 : 57  yha se dekna hai 