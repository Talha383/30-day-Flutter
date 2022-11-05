// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_local_variable, unused_import, prefer_const_literals_to_create_immutables, implementation_imports

import 'package:flutter/material.dart';
import 'package:myapp/utility/routes.dart';

// ignore: camel_case_types
class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

bool changeButton = false;

// ignore: camel_case_types
class _login_pageState extends State<login_page> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                'Welcome',
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
                padding: const EdgeInsets.symmetric(
                    vertical: 16.2, horizontal: 32.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: ("Enter Username"),
                        labelText: " User Name",
                      ),
                    ),
                    TextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                      ),
                       validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  // ignore: empty_statements
                  if (_formKey.currentState!.validate()) {
                    return;
                  }
                  await Future.delayed(Duration(seconds: 2));
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, MyRoutes.homeroute);
                },
                child: AnimatedContainer(
                  height: 40,
                  width: changeButton ? 50 : 150,

                  alignment: Alignment.center,
                  // ignore: sort_child_properties_last
                  child: changeButton
                      ? Icon(Icons.done, color: Colors.white)
                      : Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  decoration:
                      //   shape:changeButton
                      //   ?BoxShape.circle
                      //  :BoxShape.rectangular,
                      BoxDecoration(
                          //   shape:changeButton
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 150 : 8)),
                  duration: Duration(seconds: 2),
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
      ),
    );
  }
}
