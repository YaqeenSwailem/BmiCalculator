// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'Screens/homeScreen.dart';
import 'Screens/resultScreen.dart';
import 'Classes/main.dart';

void main() {
  runApp( MainApp() );
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
