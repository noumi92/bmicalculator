import 'package:bmicalculator/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          border: const OutlineInputBorder().copyWith(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(width: 1, color: Colors.grey)
          )
        )
      ),
      home: const HomeView(),
    );
  }
}
