//Mengimport library material dart, ColorPalette dan register_view
import 'package:flutter/material.dart';
import 'package:login_register_project/constans.dart';
import 'package:login_register_project/views/register_view.dart';

//Membuat class Stateless LoginView 
class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Membuat return Scaffold
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),

        //Membuat child list View
        child: ListView(
          children:<Widget> [
            Center (
              child: Column(
                children:<Widget> [
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  //Membuat Widget Icon
  Widget _iconLogin() {
    return Image.asset(
      "assets/login.png",
      width: 150.0,
      height: 150.0,
    );
  }

  //Membuat Widget TitleDescription
  Widget _titleDescription() {
    return Column(
      children:<Widget> [
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          'Login ke dalam aplikasi',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        Text (
          "Masukkan Username dan Password anda untuk login ke dalam aplikasi.",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.white
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  //Membuat Widget TextField untuk username dan password
  Widget _textField() {
    return Column(
      children:<Widget> [
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.0
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 2.5
              )
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: ColorPalette.hintText),
          ),
          style: TextStyle(color: Colors.white),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.0
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 2.5
              )
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: ColorPalette.hintText),
          ),
          style: TextStyle(color: Colors.white),
          autofocus: false,
          obscureText: true,
        )
      ],
    );
  }

  //Membuat Widget Button login dan register
  Widget _buildButton(BuildContext context) {
    return Column(
      children:<Widget> [
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Login',
              style: TextStyle(color: ColorPalette.primaryColor),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration (
              color: ColorPalette.buttonColor,
              borderRadius: BorderRadius.circular(28.0)
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          'or',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ) ,
        ),
        FlatButton(
          child: Text(
            'Register',
            style: TextStyle(color: ColorPalette.underlineTextField),
          ),
          onPressed: () {
            Navigator.pushNamed(context, RegisterView.routeName);
          },
        ),
      ],
    );
  }
}