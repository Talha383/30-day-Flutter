// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Pages/homepage.dart';
import 'package:myapp/Pages/login_page.dart';
// ignore: duplicate_ignore, duplicate_ignore
void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: "",
      routes: {
        "/": (context) => login_page(),
        "/homepage": (context) => homepage(),
        "/login": (context) => login_page(),
      },
    );
  }
}
