import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/registerpage.dart';

class LoginorRegister extends StatefulWidget {
  const LoginorRegister({super.key});

  @override
  State<LoginorRegister> createState() => _LoginorRegisterState();
}

class _LoginorRegisterState extends State<LoginorRegister> {
  // initially show login page
  bool showLoginPage =true;
  void Togglepages() {
    setState(() {
      showLoginPage =!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Loginpage(onTap: Togglepages);
    } else {
      return Registerpage(onTap: Togglepages);
    }
  }
}