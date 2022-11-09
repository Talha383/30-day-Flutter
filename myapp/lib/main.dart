import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Pages/homepage.dart';
import 'package:myapp/Pages/login_page.dart';
import 'package:myapp/utility/routes.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/homepage",
      routes: {
        "/": (context) => const login_page(),
        MyRoutes.homeroute: (context) => const homepage(),
        MyRoutes.loginroute: (context) => const login_page(),
      },
    );
  }
}
