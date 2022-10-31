// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_local_variable, sort_child_properties_last

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:myapp/utility/routes.dart';


// ignore: camel_case_types
class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

// ignore: camel_case_types
class _login_pageState extends State<login_page> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Welcome $name',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.2, horizontal: 32.0),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: ("Enter Username"),
                      labelText: " User Name",
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                    onChanged: ((value) {
                      name = value;
                      setState(() {});
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              height: 40,
              color: Colors.deepPurple,
              alignment: Alignment.center,
              child: Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15)
                 ),
              ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.loginroute);
            //   },
            //   style: TextButton.styleFrom(minimumSize: Size(100, 50)),
            //   child: Text("Login"),
            // ),
          ],
        ),
      ),
    );
  }
}
