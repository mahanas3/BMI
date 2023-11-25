import 'package:flutter/material.dart';
import 'package:flutter_project10/screen/Calc1.dart';

void main() {
  runApp(const BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0x0ff0a321),
          appBarTheme: const AppBarTheme(color: Color(0x0ff0a321))),
      home: const Calc1(),
    );
  }
}
