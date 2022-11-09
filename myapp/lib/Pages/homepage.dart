import 'package:flutter/material.dart';
import 'package:myapp/Pages/widget/drawer.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
            child: const Text(
          'Catalog',
          style: TextStyle(
            color: Colors.black,
          ),
        )),
      ),
      body: const Center(
        child: Text('Welcome to Flutter'),
      ),
      drawer: const MyDrawer(),
    );
  }
}
