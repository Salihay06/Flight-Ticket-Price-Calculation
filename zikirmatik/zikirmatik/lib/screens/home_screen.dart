import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/zikirmatik.png',
                  width: 300,
                  height: 300,
                ),
                Positioned(
                  top: 53,
                  left: 160,
                  child: Text(
                    _counter.toString(),
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: _increamentButton(),
                ),
                Positioned(
                  right: 76,
                  bottom: 114,
                  child: _resetBottom(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _resetBottom() {
    return GestureDetector(
      onTap: _resetCounter,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.red, // Buton görünürlüğü için renk ekledim
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }

  GestureDetector _increamentButton() {
    return GestureDetector(
      onTap: _incrementCounter,
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.green, // Görünür olması için renk ekledim
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }
}
