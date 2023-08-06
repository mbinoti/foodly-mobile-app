import 'package:flutter/material.dart';
import 'package:foodly_mobile/pages/slide.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(
          // primaryColor: const Color(0xffebff72),
          // hintColor: const Color(0xffebff72),
          scaffoldBackgroundColor: const Color(0xffebff72),
          // primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
          body: Slide(),
        ),
      ),
    );
  }
}
