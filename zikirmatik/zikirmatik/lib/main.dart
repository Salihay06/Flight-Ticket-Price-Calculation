import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:zikirmatik/screens/home_screen.dart';


void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
    return materialApp;
  }
}