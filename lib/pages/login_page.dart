import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/mybutton.dart';
import 'package:flutter_application_1/Components/mytexfield.dart';

import 'homepage.dart';

class Loginpage extends StatefulWidget {
  final void Function()? onTap;


   const Loginpage({super.key, required this.onTap});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  //textediting controller
  final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordCotroller = TextEditingController();
    void login () {

      /*
      fill out authentication here

      */
      // navigate to the homepage
      Navigator.push(
        context,
         MaterialPageRoute(
        builder: (context) => const Homepage()
        )
        );
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Icon(Icons.lock_open_rounded,
         size: 100,
         color: Theme.of(context).colorScheme.inversePrimary,
         ),
        const  SizedBox(height: 21),
        const Text("FOOD DELIVERY APP", 
        style: TextStyle(
          fontSize: 16
          ),
        
        ),
        const SizedBox(height: 25),

        MyTextField(controller: emailController,
         hintText: "Email",
          obscureText: false
          ),

          const SizedBox(height: 25,),
          //passwordtextfield
           MyTextField(controller: passwordCotroller,
         hintText: "Password",
          obscureText: true
          ),
          const SizedBox(height: 25,),

       //sign in button
       MyButton(text: "Sign In",
        onTap: login),
       const SizedBox(height: 25,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("not a memeber", 
          style: TextStyle(color: Theme.of(
            context).colorScheme.inversePrimary),),
          const SizedBox(width: 4,),
          GestureDetector(
            onTap:widget.onTap,
            child: Text(
              "Register now ?",
             style: TextStyle(color: Theme.of(
              context).colorScheme.inversePrimary)),
          )
        ],
       )


        ],
        ),
      ),
    );
  }
}