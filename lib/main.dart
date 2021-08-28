import 'package:flutter/material.dart';
import 'package:untitled1/Screens/hoem_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomeScreen(),
      },
    ),
  );
}
