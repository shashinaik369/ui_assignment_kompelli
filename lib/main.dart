import 'package:flutter/material.dart';
import 'package:ui_assignment_kompelli/representation/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primaryIconTheme: IconThemeData(color: Colors.grey)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
