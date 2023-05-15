import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
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

class SelectPatient extends StatefulWidget {
  const SelectPatient({Key? key}) : super(key: key);

  @override
  _SelectPatientState createState() => _SelectPatientState();
}

class _SelectPatientState extends State<SelectPatient> {

  List<Map<String, dynamic>> contacts = <Map<String, dynamic>>[];
  List<Map<String, dynamic>> filtered = <Map<String, dynamic>>[];
  JsonDecoder decoder = JsonDecoder();

  Future<bool> _loadAsset() async {
    String value = await rootBundle.loadString('assets/files/utentes.json');
    for (Map<String, dynamic> x in decoder.convert(value)["patients"]) {
      contacts.add(x);
      filtered.add(x);
    }
    return true;
  }
  @override
  void initState() {
    super.initState();
    _loadAsset().then((value) => setState(() {}));
  }
  Widget build (BuildContext context) {
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
    home: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        /*
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: Image(image: AssetImage("assets/images/LogotipoBVCE_branco.png"),
            ),
          ),
        ],
         */
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text("Selecione um utente"),
        backgroundColor: Colors.redAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: TextField(
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    labelText: "Procurar",
                    labelStyle:
                    TextStyle(color: Colors.black),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.black),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )
                ),
                onChanged: (e) {
                  print(patients[0]["name"]);
                  setState(() {
                    filtered = patients.where((element) =>
                        element["name"].toLowerCase().contains(e.toLowerCase())).toList();
                  });
                },
              ),
            ),

            Flexible(
              child: ListView.builder(
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Card(
                      color: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              filtered[index]["name"],
                              style: TextStyle(
                                fontSize: 26,
                              ),
                            ),
                            subtitle: Text(
                              filtered[index]["age"],
                            ),
                            textColor: Colors.blueAccent,
                            trailing: GestureDetector(
                              child: Icon(
                                  Icons.phone,
                                  color: Colors.blueAccent,
                                  size: 36
                              ),
                          ),
                    ),
                  ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),

      ),
    ),
    );

  }
}