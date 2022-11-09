// ignore_for_file: implementation_imports, prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/src/widgets/container.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountEmail: Text("Talhashams1995@gmail.com"),
              accountName: Text('Talhashams'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/Pic.jpg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
