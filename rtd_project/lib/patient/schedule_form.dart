import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'confirmation_page.dart';

void main()
{
  bool debug = true;
  if(debug)
    runApp(ScheduleFormMain());
}

// #############################################################################
// ################ Schedule Form Main Class ###################################
// #############################################################################
//
class ScheduleFormMain extends StatefulWidget {
  @override
  _ScheduleFormMainState createState() => _ScheduleFormMainState();
}

//
// #############################################################################
// ################ Schedule Form Main State Class #############################
// #############################################################################
//
class _ScheduleFormMainState extends State<ScheduleFormMain> {
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
          resizeToAvoidBottomInset : false, // --------------------------------> P2: Evita Overflow de Pixels **
          appBar: AppBar(
            leading: BackButton(
                color: Colors.black
            ),
            title: const Center(
              child: Text("Agendar"),
            ),
          ),

          body: ScheduleForm(),
      ),
    );
  }
} //


// Custom Form widget.
class ScheduleForm extends StatefulWidget {
  const ScheduleForm({super.key});

  @override
  ScheduleFormState createState() {
    return ScheduleFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class ScheduleFormState extends State<ScheduleForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  TextEditingController dateController = TextEditingController();

  // For the purpose of displaying error messages at appropriate moments
  bool _submitted = false;

  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = dateController.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Especifique uma hora!';
    }
    // return null if the text is valid
    return null;
  }

  @override
  void initState()
  {
    super.initState();
    dateController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return
      Center (
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text("Preenche os dados do seu agendamento", style: TextStyle(fontSize: 17.6)),
                  ),
                  Divider(),
                // Add TextFormFields and ElevatedButton here.
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.home),
                      hintText: '',
                      labelText: 'Morada'
                  ),
                ),
                  TextField(
                      controller: dateController, //editing controller of this TextField
                      decoration: InputDecoration(
                          icon: Icon(Icons.calendar_today), //icon of text field
                          labelText: "Hora *", //label text of field
                          errorText: _submitted ? _errorText : null ,
                      ),
                      readOnly: true,  // when true user cannot edit text
                      onTap: () async {
                        TimeOfDay? selectedTime = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                          builder: (BuildContext context, Widget? child) {
                            return MediaQuery(
                              data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
                              child: child!,
                            );
                          },
                        );
                        if(selectedTime != null) {
                          setState(() {
                            dateController.text = selectedTime.hour.toString() + ":" +selectedTime.minute.toString(); //set foratted date to TextField value.
                          });
                        }
                      },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 20,
                    decoration: const InputDecoration(
                        // icon: Icon(Icons.home),
                        alignLabelWithHint: true,
                        hintText: '',
                        labelText: 'Comentários'
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {},
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {

                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ConfirmationPage())
                          );
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          /*
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('A verificar...')),
                        );
                         */
                          setState(() {
                            _submitted = true;
                          });
                        }
                      },
                      child: const Text('Submeter'),
                    ),
                  ),
              ],
            ),
            ),
            ],
          ),
        ),
      );
  }
}