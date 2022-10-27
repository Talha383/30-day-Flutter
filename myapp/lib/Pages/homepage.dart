// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';


// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
          child: Text('Catalog')
      ),
      ),
      body: const Center(
        child: Text('Welcome to Flutter'),
      ),
      drawer: const Drawer(),
    );
  }
}
 