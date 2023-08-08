import 'package:flutter/material.dart';
import 'package:foodly_mobile/pages/page1.dart';
import 'package:foodly_mobile/pages/page2.dart';

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
          // scaffoldBackgroundColor: const Color.fromARGB(255, 117, 248, 232),
          scaffoldBackgroundColor: Colors.white,
        ),
        //
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
          body: Page1(),
        ),
      ),
    );
  }
}
