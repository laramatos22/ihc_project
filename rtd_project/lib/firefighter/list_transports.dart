import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'main_bombeiros.dart';


class TransportsList extends StatefulWidget {
  //const MainFirefighter({Key? key}) : super(key: key);

  @override
  _TransportsListState createState() => _TransportsListState();
}

class _TransportsListState extends State<TransportsList> {

  void _alterStatus() {
    // Submit the form logic goes here

    // Show a pop-up message
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Troca de estado'),
          content: Text('Selecione o estado de recolha do utente:'),
          actions: [
            TextButton(
              onPressed: () {
                // Navigate to another page
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => homeScreentwo()));
              },
              child: Text('Pŕoxima recolha'),
            ),

            TextButton(
              onPressed: () {
                // Navigate to another page
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => homeScreentwo()));
              },
              child: Text('Utente recolhido'),
            ),

            TextButton(
              onPressed: () {
                // Navigate to another page
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => homeScreentwo()));
              },
              child: Text('Transporte concluído'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build (BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
        title: const Text("Lista de Transportes"),
        backgroundColor: Color.fromARGB(230, 152, 0, 1),
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Flexible(
              child: ListView(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5),
                      child: Card(
                        child: Column(
                          children: [

                            ListTile(
                              title: Text("Honório Rodrigues",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text("86 anos - Rua da Amoreira, nº 20"
                              ),
                              textColor: Color.fromRGBO(44, 73, 108, 1.0),
                              trailing: GestureDetector(
                                child: Icon(
                                  Icons.navigate_next_outlined,
                                    color: Color.fromRGBO(44, 73, 108, 1.0),
                                    size: 36
                                ),
                                onTap: () {
                                  _alterStatus(); // Chama _alterStatus passando o BuildContext
                                },
                              ),
                            ),

                            ListTile(
                              title: Text("Maria Augusta Sousa",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text("78 anos - Avenida da Ajuda, nº 42"
                              ),
                              textColor: Color.fromRGBO(44, 73, 108, 1.0),
                              trailing: GestureDetector(
                                child: Icon(
                                    Icons.navigate_next_outlined,
                                    color: Color.fromRGBO(44, 73, 108, 1.0),
                                    size: 36
                                ),
                                onTap: () {
                                  _alterStatus(); // Chama _alterStatus
                                },
                              ),
                            ),

                            ListTile(
                              title: Text("Aníbal Costa e Silva",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text("83 anos - Travessa da Bela Vista, nº 3"
                              ),
                              textColor: Color.fromRGBO(44, 73, 108, 1.0),
                              trailing: GestureDetector(
                                child: Icon(
                                    Icons.navigate_next_outlined,
                                    color: Color.fromRGBO(44, 73, 108, 1.0),
                                    size: 36
                                ),
                                onTap: () {
                                  _alterStatus(); // Chama _alterStatus passando o BuildContext
                                },
                              ),
                            ),


                          ],
                        ),
                      ),
                  ),

                  BottomNavigationBar(
                      items: [
                        BottomNavigationBarItem(
                            icon: const Icon(Icons.home),
                            label: "Área do Bombeiro"
                        ),
                        BottomNavigationBarItem(
                            icon: const Icon(Icons.phone),
                            label: "Contactos"
                        ),
                      ],
                      onTap:  (int index) {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainFirefighter()),
                        );
                      } else if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainFirefighter()),
                        );
                      }
                    },
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