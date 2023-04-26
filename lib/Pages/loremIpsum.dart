import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/BottomNavBar.dart';




class LoremIpsum extends StatelessWidget {
        const LoremIpsum( {super.key} );

        @override
        Widget build( BuildContext context ) {
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
                        bottomNavigationBar: const BottomNavBarComp( curentScreenIndex:  1),
                );
        }
}