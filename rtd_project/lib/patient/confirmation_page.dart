import 'package:flutter/material.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text("Página de Confirmação"),
        backgroundColor: Color.fromARGB(230, 152, 0, 1),
      ),

      body: SafeArea(
          child: Center(
            child: Column(
              children: [

               Column(
                 children: [

                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text('Aguarde um momento...',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Color.fromARGB(230, 152, 0, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('O seu pedido está a ser processado. \nSerá informado quando for aprovado',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            //color: Colors.teal,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('OK'),
                        ),
                      ),


                    ],
                  ),



              ],
            ),

          )

      ),

    );
  }
}