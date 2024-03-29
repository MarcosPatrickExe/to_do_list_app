import 'package:flutter/material.dart';
import '../components/BottomNavBarComp.dart';
// testes

// essa tela futuramente terá sua função alterada pois serviu somente para implementar algo básico como o layout da pagina
class Community extends StatelessWidget {
          Community( {super.key} );

          // estilo-modelo para os ElevatedButtons
          final ButtonStyle allBtnStyles =  ElevatedButton.styleFrom(
                    minimumSize: const Size(100.0, 50.0), // aplicando valores fixos
                    maximumSize: const Size(200.0, 100.0),
                    backgroundColor: const Color.fromARGB(255, 128, 0, 177),
                    textStyle: const TextStyle( fontSize: 20.0,  ),
          );

          @override     //
          Widget build( BuildContext bc ){
                  return Scaffold(
                            backgroundColor: const Color.fromARGB(255, 55, 3, 69),
                            appBar: AppBar( // appBar eh a barra do topo que aparece em todas as telas
                                  title: const Text("Options"),
                                  centerTitle: true,
                                  toolbarHeight: 50.2,
                                  backgroundColor: Colors.deepPurple,
                            ),
                           body:  Center(
                                child: Column(
                                        mainAxisAlignment:  MainAxisAlignment.spaceAround, // definindo botoes centrais verticalmente
                                        children:   <Widget>[
                                               // menu de opcoes
                                               ElevatedButton(
                                                      style: this.allBtnStyles,
                                                      onPressed: () { },
                                                      child: const Text("Start game", style: TextStyle( color: Colors.white),  ),
                                              ),
                                              ElevatedButton(
                                                      style: this.allBtnStyles,
                                                      onPressed: () {},
                                                      child: Text("Settings", style: TextStyle( color: Colors.white),  ),
                                              ),
                                              ElevatedButton(
                                                      style: this.allBtnStyles,
                                                      onPressed: () {},
                                                      child: Text("Volume", style: TextStyle( color: Colors.white),  ),
                                              ),
                                              ElevatedButton(
                                                      style: this.allBtnStyles,
                                                      onPressed: () {},
                                                      child: Text("About", style: TextStyle( color: Colors.white),  ),
                                              ),
                                        ],
                                )
                           ),

                          bottomNavigationBar: const BottomNavBarComp( curentScreenIndex: 2 ),
                  );
          }
}
