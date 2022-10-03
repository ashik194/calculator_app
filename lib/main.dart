import 'package:calculator_app/input_page.dart';
import 'package:flutter/material.dart';

void main() =>  runApp(Calculate());


class Calculate extends StatelessWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21)
        )
      ),
      home: InputPage(),
    );
  }
}


