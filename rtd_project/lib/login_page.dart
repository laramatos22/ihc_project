
/*
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:rtd_project/patient/main_patient.dart';
import 'firefighter/main_bombeiros.dart';
//
// #############################################################################
// ################ LOGIN PAGE CLASS ###########################################
// #############################################################################
//
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
//
// #############################################################################
// ################ LOGIN PAGE STATE CLASS #####################################
// #############################################################################
//
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var inputcontroller;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/ambulancia.jpeg')),
              ),
            ),

            
            
            
            
            
            // text field for user input
            TextField(
              // text editing controller
              controller: inputcontroller,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              style: TextStyle(
                fontSize: 18,
              ),
              decoration: InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(),
              ),
            ),

            // material button that will
            // call the validate method by
            // passing user input.
            MaterialButton(
              onPressed: (() => Validate(inputcontroller.text)),
              child: Text("Check"),
            ),
       
            
            
            
            
            
            
            
            
            
            
            
            
            SizedBox(
              height: 15,
            ),

            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),

            SizedBox(
              height: 15,
            ),


            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MainFirefighter())
                );
              },
              child: Text(
                'MAIN - BOMBEIROS',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MainPatient())
                );
              },
              child: Text(
                'MAIN - PATIENT',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  /*
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));*/
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}

// VALIDATE EMAIL INPUTED AND USE BOOLEAN VALUE
void Validate(String email) {
  bool isvalid = EmailValidator.validate(email);
  print(isvalid);
}

*/

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:rtd_project/patient/main_patient.dart';
import 'firefighter/main_bombeiros.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
//
// #############################################################################
// ################ LOGIN PAGE STATE CLASS #####################################
// #############################################################################
//
class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insira o seu email...';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insira a sua Password...';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                child: Center(
                  child: ElevatedButton(
                    /*
                      MainFirefighter()
                      MainPatient()
                      ERROR MESSAGE
                    */
                    child: const Text('Login'),
                    onPressed: () {
                      if (emailController.text == "honorio@gmail.com" && passwordController.text == "ajuda1234") {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MainPatient(email: emailController.text,
                          )
                        ),
                      );
                      } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                      content: Text('Email ou Password incorrectos. Tente novamente...')),
                      );
                      }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}