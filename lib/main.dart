import 'package:bussiness_card/view/screen/DetailsPage.dart';
import 'package:bussiness_card/view/screen/HomePage.dart';
import 'package:bussiness_card/view/screen/PDFPage.dart';
import 'package:bussiness_card/view/screen/SplashPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'splash',
      theme: ThemeData(
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
            // enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
      routes: {
        '/': (context) => const HomePage(),
        'splash': (context) => const SplashPage(),
        'details': (context) => const Details(),
        'pdf': (context) => const PDF(),
      },
    );
  }
}
