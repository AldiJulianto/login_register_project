import 'package:flutter/material.dart';
import 'package:login_register_project/views/login_view.dart';
import 'package:login_register_project/views/register_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Register",
    initialRoute: "/",
    routes: {
      "/" : (context) => LoginView(),
      RegisterView.routeName : (context) => RegisterView(),
    },
  ));
}