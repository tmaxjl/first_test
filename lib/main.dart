// import 'package:connexion/animation.dart';
// import 'package:connexion/home.dart';
// import 'package:connexion/data/db-helper.dart';
import 'package:connexion/screen-page/welcome-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Delta Monitoring',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(0, 246, 246, 246),
          ),
        ),
        home: WelcomePage());
  }
}
