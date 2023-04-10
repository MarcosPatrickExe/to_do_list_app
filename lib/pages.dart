import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/main.dart';


class Scenes{   }


class LoremIpsum extends StatelessWidget implements Scenes{
          const LoremIpsum({super.key});

          @override
          Widget build(BuildContext context) {
                return Scaffold(
                        backgroundColor: const Color.fromARGB(255, 55, 3, 69),
                        appBar: AppBar( //AppBar implementa PreferredSizeWidget()
                                title:  const Text("Lorem Ipsum" ),
                                centerTitle: true,
                                toolbarHeight: 50.2,
                                backgroundColor: Colors.deepPurple,
                        ),
                        body:  Center(
                              child:  Container(
                                      width: 200.0,
                                      height: 300.0,
                                      child: const Text(
                                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                                        style: TextStyle( color: Colors.white, fontSize: 30.0),
                                      ),
                              )
                        ),
                        persistentFooterButtons: [],
                );
          }
}



class Options extends StatelessWidget implements Scenes {
          Options({super.key});

          final ButtonStyle allBtnStyles = ElevatedButton.styleFrom(
                    minimumSize: const Size(100.0, 50.0),
                    maximumSize: const Size(200.0, 100.0),
                    backgroundColor: const Color.fromARGB(255, 128, 0, 177),
                    textStyle: const TextStyle( fontSize: 20.0,  ),
          );

          @override
          Widget build(BuildContext bc){
                  return Scaffold(
                            backgroundColor: const Color.fromARGB(255, 55, 3, 69),
                            appBar: AppBar(
                                  title: const Text("Options"),
                                  centerTitle: true,
                                  toolbarHeight: 50.2,
                                  backgroundColor: Colors.deepPurple,
                            ),
                           body:  Center(
                                child: Column(
                                        mainAxisAlignment:  MainAxisAlignment.spaceAround,
                                        children:   <Widget>[
                                               ElevatedButton(
                                                      style: this.allBtnStyles,
                                                      onPressed: () { },
                                                      child: const Text("Option one...", style: TextStyle( color: Colors.white),  ),
                                              ),
                                              ElevatedButton(
                                                      style: this.allBtnStyles,
                                                      onPressed: () {},
                                                      child: Text("Option two...", style: TextStyle( color: Colors.white),  ),
                                              ),
                                              ElevatedButton(
                                                      style: this.allBtnStyles,
                                                      onPressed: () {},
                                                      child: Text("Option three...", style: TextStyle( color: Colors.white),  ),
                                              ),
                                              ElevatedButton(
                                                      style: this.allBtnStyles,
                                                      onPressed: () {},
                                                      child: Text("Option four...", style: TextStyle( color: Colors.white),  ),
                                              ),
                                        ],
                                )
                           ),
                          persistentFooterButtons: [],
                  );
          }
}