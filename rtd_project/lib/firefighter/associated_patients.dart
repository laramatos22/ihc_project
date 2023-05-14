import 'package:flutter/material.dart';
//
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!! DEBUGGER SNIPPET !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//
void main() {
  int debbug = 1;
  if(debbug == 1){
    runApp(SelectPatient());
  }
}
//
// #############################################################################
// ################ Schedule Main Menu Class ####################################
// #############################################################################
//
class SelectPatient extends StatefulWidget {
  @override
  _SelectPatientState createState() => _SelectPatientState();
}
//
// #############################################################################
// ################ Patient State Class - Main Menu ############################
// #############################################################################
//
class _SelectPatientState extends State<SelectPatient> {
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
          ),
      ),
// _____________________________________________________________________________
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset : false, // --------------------------------> P2: Evita Overflow de Pixels **
        appBar: AppBar(
          leading: BackButton(
              color: Colors.black
          ),
          title: const Center(
            child: Text("Utentes"),
          ),
        ),
        floatingActionButton: PopupMenuButton( // creates the option menu button as a floating action button
          itemBuilder: (BuildContext context) => [ // defines the options in the menu
            const PopupMenuItem(
              value: 1,
              child: Text('Option 1'),
            ),
            const PopupMenuItem(
              value: 2,
              child: Text('Option 2'),
            ),
            const PopupMenuItem(
              value: 3,
              child: Text('Option 3'),
            ),
          ],
          onSelected: (value) { // handles the option menu item selection
            switch (value) {
            case 1:
            // Handle option 1
              break;
            case 2:
            // Handle option 2
              break;
            case 3:
            // Handle option 3
              break;
            }
          },
          child: const FloatingActionButton( // creates the add icon button for the floating action button
            onPressed: null,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
