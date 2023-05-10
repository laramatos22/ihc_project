import 'package:flutter/material.dart';
import 'package:rtd_project/main.dart';

void main() {
  runApp(MainPatient());
}//MANDAR FORA NO FIM!

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
        theme: ThemeData( primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            color: Colors.redAccent,
          ),
        ),
        home: Scaffold(
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
                  children: <Widget>[
                      Container(
                        color: Colors.grey,
                        child: IconButton(
                            iconSize: 72,
                            color: Colors.white,
                            icon: const Icon(Icons.emergency),
                            onPressed: () {}
                        ),
                      ),
                    Container(
                      color: Colors.grey,
                      child: IconButton(
                          iconSize: 72,
                          color: Colors.white,
                          icon: const Icon(Icons.person),
                          onPressed: () {}
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: IconButton(
                          iconSize: 72,
                          color: Colors.white,
                          icon: const Icon(Icons.phone),
                          onPressed: () {}
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: IconButton(
                        iconSize: 72,
                        color: Colors.white,
                        icon: const Icon(Icons.notifications),
                        onPressed: () {}
                      ),
                    ),

                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ));
      }
    }
// ####################################