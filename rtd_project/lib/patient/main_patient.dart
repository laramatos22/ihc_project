import 'package:flutter/material.dart';

//

void main() {
  runApp(MainPatient());
}// ------------------------------------------------------> MANDAR FORA NO FIM!!!!!!!!!!!!!!!!!!!!!!!!!!!

class MainPatient extends StatefulWidget {
  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<MainPatient> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // ----------------------------------------------------> P1: Scaffold tem de ser Child de MaterialApp
        debugShowCheckedModeBanner: false,
        title: 'Rede Transporte de Doentes',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            color: Colors.redAccent
          ),
          ),
        home: Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomInset : false, // --------------------------------> P2: Evita Overflow de Pixels **
          appBar: AppBar(
            title: Text("Paciente - Menu Principal")
          ),
          body: SingleChildScrollView( // -------------------------------------> P2: Evita Overflow de Pixels **
            child: Column(
              children: <Widget>[
                GridView.count(
                  shrinkWrap: true,
                  primary: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  children: <Widget>[
// #############################################################################
// ################ SCHEDULE - UPPER LEFT BUTTON ###############################
// #############################################################################
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // ---------------------> Button Color (Background color)
                        foregroundColor: Colors.blueAccent, // --------------------> Text Color  (Foreground color)
                      ),
                      icon: const Icon(
                        color: Colors.blueAccent, // ------------------------------> Icon Color
                        Icons.local_hospital,
                        size: 80,
                      ),
                      label: const Text('Agendamentos', style: TextStyle(fontSize: 25), textAlign: TextAlign.center, ), // ---> Text & its size
                    ),
// #############################################################################
// ################ PATIENT - UPPER RIGHT BUTTON ###############################
// #############################################################################
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // ---------------------> Button Color (Background color)
                        foregroundColor: Colors.blueAccent, // --------------------> Text Color  (Foreground color)
                      ),
                      icon: const Icon(
                        color: Colors.blueAccent, // ------------------------------> Icon Color
                        Icons.account_box,
                        size: 80,
                      ),
                      label: const Text('Utentes', style: TextStyle(fontSize: 25)), // ---> Text & its size
                    ),
// #############################################################################
// ################ CONTACTS - LOWER LEFT BUTTON ###############################
// #############################################################################
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // ---------------------> Button Color (Background color)
                        foregroundColor: Colors.blueAccent, // --------------------> Text Color  (Foreground color)
                      ),
                      icon: const Icon(
                        color: Colors.blueAccent, // ------------------------------> Icon Color
                        Icons.phone,
                        size: 80,
                      ),
                      label: const Text('Contactos', style: TextStyle(fontSize: 25)), // ---> Text & its size
                    ),
// #############################################################################
// ################ NOTIFICATIONS - LOWER RIGHT BUTTON #########################
// #############################################################################
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // ---------------------> Button Color (Background color)
                        foregroundColor: Colors.blueAccent, // --------------------> Text Color  (Foreground color)
                      ),
                      icon: const Icon(
                        color: Colors.blueAccent, // ------------------------------> Icon Color
                        Icons.notifications,
                        size: 80,
                      ),
                      label: const Text('Notificações', style: TextStyle(fontSize: 25)), // ---> Text & its size
                    ),
                  ],
                ),
// #############################################################################
// ################ ENDING #####################################################
// #############################################################################
              ],
            ),
          ),
        ));
      }
    }
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------