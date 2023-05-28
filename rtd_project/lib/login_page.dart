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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rede Transporte de Doentes',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Color.fromARGB(230, 150, 0, 0),
          ),
        ),
        home: Scaffold(
          resizeToAvoidBottomInset : false,
            appBar: AppBar(
              title: Text("RTD - Login"),
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

                        child: const Text('Login'),
                        onPressed: () {
                          if (emailController.text == "honorio@gmail.com" && passwordController.text == "ajuda123") {
                            Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MainPatient()
                            ),);
                          }
                          if (emailController.text == "marialuisa@gmail.com" && passwordController.text == "ajuda123") {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => MainPatient()
                            ),);
                          }
                          if (emailController.text == "paulo@bombeiro.pt" && passwordController.text == "ajuda123") {
                                Navigator.push(context, MaterialPageRoute(
                                builder: (context) => MainFirefighter()
                                ),);
                          } else {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  content: Text('Email ou Password incorrectos. Tente novamente...')
                                ),);
                          }
                        }
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
          ),
        ),
        );
  }
}