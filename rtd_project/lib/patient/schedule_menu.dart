import 'package:flutter/material.dart';
//
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!! DEBUGGER SNIPPET !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//
void main() {
  int debbug = 1;
  if(debbug == 1){
    runApp(ScheduleMainMenu());
  }
}
//
// #############################################################################
// ################ Schedule Main Menu Class ####################################
// #############################################################################
//
class ScheduleMainMenu extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}
//
// #############################################################################
// ################ Patient State Class - Main Menu ############################
// #############################################################################
//
class _ScheduleState extends State<ScheduleMainMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rede Transporte de Doentes',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              color: Colors.redAccent
              )
        ),
// _____________________________________________________________________________
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Center(
          child: Text("Agendar"),
        ),
      ),

      body: Center (
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),

          // -------------------------------------------------------------------
          // ------ SCHEDULE MENU OPTIONS --------------------------------------
          // -------------------------------------------------------------------
          child: Column(
                children: [
                  Column(
                    children: [
                      // -------------------------------------------------------
                      // ------ 1st OPTION - SCHEDULE TRANSPORT ----------------
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white, // ---------------------> Button Color (Background color)
                          foregroundColor: Colors.blueAccent, // --------------------> Text Color  (Foreground color)
                          minimumSize: const Size.fromHeight(80),
                          side: BorderSide(width: 1.0, color: Colors.blueAccent),// ---> Border color and thickness
                        ),
                        icon: const Icon(
                          color: Colors.blueAccent, // ------------------------------> Icon Color
                          Icons.add_box_outlined,
                          size: 80,
                        ),
                        label: const Text('Agendar transporte', style: TextStyle(fontSize: 25), textAlign: TextAlign.left, ), // ---> Text & its size
                      ),
                      // -------------------------------------------------------
                      // ------ 2nd OPTION - SCHEDULED TRANSPORT ---------------
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white, // ---------------------> Button Color (Background color)
                          foregroundColor: Colors.blueAccent, // --------------------> Text Color  (Foreground color)
                          minimumSize: const Size.fromHeight(80),
                          side: BorderSide(width: 1.0, color: Colors.blueAccent),// ---> Border color and thickness
                        ),
                        icon: const Icon(
                          color: Colors.blueAccent, // ------------------------------> Icon Color
                          Icons.list,
                          size: 80,
                        ),
                        label: const Text('Transportes marcados', style: TextStyle(fontSize: 25), textAlign: TextAlign.left, ), // ---> Text & its size
                      ),
                      // -------------------------------------------------------
                      // ------ 3rd OPTION - SCHEDULE HISTORY ------------------
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white, // ---------------------> Button Color (Background color)
                          foregroundColor: Colors.blueAccent, // --------------------> Text Color  (Foreground color)
                          minimumSize: const Size.fromHeight(80),
                          side: BorderSide(width: 1.0, color: Colors.blueAccent), // ---> Border color and thickness
                        ),
                        icon: const Icon(
                          color: Colors.blueAccent, // ------------------------------> Icon Color
                          Icons.history,
                          size: 80,
                        ),
                        label: const Text('Histórico', style: TextStyle(fontSize: 25), textAlign: TextAlign.left, ), // ---> Text & its size
                      ),
                      // -------------------------------------------------------
                      // ------ 4th OPTION - TREATMENT SESSIONS ----------------
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white, // ---------------------> Button Color (Background color)
                          foregroundColor: Colors.blueAccent, // --------------------> Text Color  (Foreground color)
                          minimumSize: const Size.fromHeight(80),
                          side: BorderSide(width: 1.0, color: Colors.blueAccent), // ---> Border color and thickness
                        ),
                        icon: const Icon(

                          color: Colors.blueAccent, // ------------------------------> Icon Color
                          Icons.personal_injury,
                          size: 80,
                        ),
                        label: const Text('Sessoẽs de tratamento', style: TextStyle(fontSize: 25), textAlign: TextAlign.left, ), // ---> Text & its size
                      ),
                    ],
                  ),
                  const Divider(
                      height:0
                  )

// #############################################################################
// ################ ENDING #####################################################
// #############################################################################
                ],
              ),
          ),
      ),
    ),
    );
  }
}