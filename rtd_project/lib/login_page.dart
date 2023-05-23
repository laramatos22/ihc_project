import 'package:flutter/material.dart';
import 'package:rtd_project/patient/main_patient.dart';

import 'firefighter/main_bombeiros.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
// #############################################################################
// ################ INSERT EMAIL & PASSWORD - LOGIN ############################
// #############################################################################
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
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
// #############################################################################
// ################ NOTIFICATIONS - LOWER RIGHT BUTTON #########################
// #############################################################################

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
                'MAIN - PACIENTES',
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
