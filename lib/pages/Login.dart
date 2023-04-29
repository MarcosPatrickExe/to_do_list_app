import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/BottomNavBarComp.dart';




class Login extends StatelessWidget {
        const Login( {super.key} );

        final _textStyled = const TextStyle(
                color: Colors.deepPurple,
                fontSize: 20.0,
        );


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
                                                maxHeight: MediaQuery.of(context).size.height *0.7,
                                                maxWidth: MediaQuery.of(context).size.width *0.8,
                                      ),
                                      child:  Column(
                                                children:   <Widget>[
                                                    const Text(
                                                            "Username",
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle( color: Colors.white , fontSize: 30.0),
                                                    ),
                                                    const Text(
                                                              "Email",
                                                              textAlign: TextAlign.left,
                                                              style: TextStyle( color: Colors.white , fontSize: 10.0),
                                                    ),
                                                    TextFormField (
                                                            maxLines: 1,
                                                            maxLength: 20,
                                                            keyboardType: TextInputType.emailAddress,
                                                             decoration:  InputDecoration(
                                                                      icon: Icon( Icons.email),
                                                                      hintText: "email",
                                                                      hintStyle: this._textStyled,
                                                             ),
                                                            style: const TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 20.0,
                                                            ),
                                                          ),
                                                        Text("Password:"),
                                                        TextFormField (
                                                                  maxLines: 1,
                                                                  maxLength: 10,
                                                                  keyboardType: TextInputType.text,
                                                                  decoration:  InputDecoration(
                                                                        icon: Icon( Icons.password),
                                                                        hintText: "password",
                                                                        hintStyle: this._textStyled,
                                                              ),
                                                              style: const TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 20.0,
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