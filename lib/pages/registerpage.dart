import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/mybutton.dart';
import 'package:flutter_application_1/Components/mytexfield.dart';

class Registerpage extends StatefulWidget {
  final void Function()? onTap;
  

  const Registerpage({
    super.key, required this.onTap });

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  //textediting controller
  final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordCotroller = TextEditingController();
    final TextEditingController confirmpasswordcontroller = TextEditingController();


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
        const Text("Lets create an account for you", 
        style: TextStyle(
          fontSize: 16
          ),
        
        ),
        const SizedBox(height: 25),

        MyTextField(controller: emailController,
         hintText: "Email",
          obscureText: false
          ),

          const SizedBox(height: 10,),
          //passwordtextfield
           MyTextField(controller: passwordCotroller,
         hintText: "Password",
          obscureText: true
          ),
          const SizedBox(height: 25,),
          //passwordtextfield
           MyTextField(controller: confirmpasswordcontroller,
         hintText: "confirm Password",
          obscureText: true
          ),
          const SizedBox(height: 25,),


       //already have an account, login here
       MyButton(text: "Sign Up", onTap: () {}),
       const SizedBox(height: 25,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("already have an account ?", 
          style: TextStyle(color: Theme.of(
            context).colorScheme.inversePrimary),),
          const SizedBox(width: 4,),
          GestureDetector(
            onTap:widget.onTap,
            child: Text(
              "login now ?",
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