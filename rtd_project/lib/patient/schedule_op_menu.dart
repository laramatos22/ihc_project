import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: ScheduleMenuPage(),
      ),
    ),
  );
}

class ScheduleMenuPage extends StatefulWidget {
  const ScheduleMenuPage({super.key});

  @override
  ScheduleMenuPageState createState() => ScheduleMenuPageState();
}

class ScheduleMenuPageState extends State<ScheduleMenuPage> {
  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData addCircle = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text("Agendar") ,
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Center (
          child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              //
              // SCHEDULE MENU OPTIONS
              //
              child: Column(
                children: [
                  //
                  // 1st Option - 'Agendar transporte'
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.black,
                        size: 35,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child:
                          Text("Agendar transporte", style: TextStyle(fontSize: 25))
                      )
                    ]
                  ),
                  const Divider(
                    height:10
                  )
                  //
                  // 1st Option
                  //
                ]
              )
          )
      )
    );
  }
}