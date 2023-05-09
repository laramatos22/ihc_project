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
        theme: ThemeData(primaryColor: const Color(0xFF000000)),
        home: Scaffold(
          resizeToAvoidBottomInset : false, // --------------------------------> P2: Evita Overflow de Pixels **
          appBar: AppBar(
            title: Text("Paciente - Menu Principal"),
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
                      child: ElevatedButton(
                          child: Image.asset('~/ihc_project/rtd_project/lib/icons/ambulance.png'),
                          onPressed: (){}
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: ElevatedButton(
                          child: Image.asset('~/ihc_project/rtd_project/lib/icons/oldphone.png'),
                          onPressed: (){}
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: ElevatedButton(
                          child: Image.asset('~/ihc_project/rtd_project/lib/icons/ambulance.png'),
                          onPressed: (){}
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: ElevatedButton(
                          child: Image.asset('~/ihc_project/rtd_project/lib/icons/ambulance.png'),
                          onPressed: (){}
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