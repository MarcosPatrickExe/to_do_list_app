import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/BottomNavBarComp.dart';




class Login extends StatelessWidget {
        const Login( {super.key} );

        @override
        Widget build( BuildContext context ) {
                return Scaffold(
                        backgroundColor: const Color.fromARGB(255, 55, 3, 69),
                        appBar: AppBar( //AppBar implementa PreferredSizeWidget()
                                  title:  Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const <Widget>[
                                                     Text("Login" ),
                                                     Icon(  Icons.login ),
                                          ],
                                  ),
                                  centerTitle: true,
                                  toolbarHeight: 50.2,
                                  backgroundColor: Colors.deepPurple,
                        ),
                        body:  Center(
                            child:
                                Container(
                                      padding: const EdgeInsets.all(20.0),
                                      decoration: const   BoxDecoration(
                                                color:  Color.fromARGB(80, 26, 0, 51),
                                                borderRadius: BorderRadius.all( Radius.circular(30.0) )
                                      ),
                                      constraints:  BoxConstraints(
                                                minWidth: 110.0,
                                                minHeight: 210.0,
                                                maxHeight: MediaQuery.of(context).size.height *0.5,
                                                maxWidth: MediaQuery.of(context).size.width *0.8,
                                      ),
                                      child:  Column(
                                                children:  const  <Widget>[
                                                     Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child:  Text(
                                                                      "Username",
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle( color: Colors.white , fontSize: 20.0),
                                                            ),
                                                    ),
                                                     Positioned(
                                                            left: 10.0,
                                                            bottom: 30.0,
                                                            child:   TextField (
                                                                      maxLength: 20,
                                                                      style: TextStyle(
                                                                                height: 20.0,
                                                                                color: Colors.white,
                                                                                fontSize: 20.0,
                                                                                backgroundColor: Colors.deepPurple,
                                                                      ),
                                                            ),
                                                     ),
                                                ]
                                      )
                                )


                        ),
                        bottomNavigationBar: const BottomNavBarComp( curentScreenIndex:  1),
                );
        }
}