import 'package:e_learning_app/constants/colors.dart';
import 'package:e_learning_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: kFontColor,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      )),
      home: HomePage(),
    );
  }
}
