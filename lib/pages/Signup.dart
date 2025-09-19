 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/BottomNavBarComp.dart';
 
 
class Fields {  // equivalente a uma interface
        final String? labelText; // usando o 'final' para todos os outros atributos
        final String? hintText;
        final Icon? iconnn; // Icon? iconnn
        final TextInputType? inputType; 
        // todos os campos 'final' inicialmente podem ser nulos, por isso o '?'

        const Fields( this.labelText, this.hintText, this.iconnn, this.inputType );
}

// essa tela somente será acessada na tela de login como uma opção onde o usuário poderá clicar para se cadastrar
class Signup extends StatelessWidget {
        const Signup( {super.key} );
        // construtor do tipo constante para inicializacao

        final  _fields =  const <Fields>[
                  Fields("username", "Enter your username", Icon( Icons.verified_user_rounded), TextInputType.text ),
                  Fields("email", "Enter your email", Icon( Icons.email), TextInputType.emailAddress ),
                  Fields("password", "Enter your password", Icon( Icons.password), TextInputType.number ),
        ];

        // funcao privada
        TextFormField _fieldsFunc (Fields field){ // campos de username, email e senha
              return TextFormField (
                      maxLines: 1,
                      maxLength: 20,
                      keyboardType:   field.inputType,
                      decoration:  InputDecoration(
                              counterText: "", // retirando o contador
                              icon:   field.iconnn,
                              iconColor: Colors.deepPurple,
                              hintText:  field.hintText,
                              hintStyle: const TextStyle( color: Color.fromARGB(55, 255, 255, 255),  fontSize: 20.0 ),
                              labelText:   field.labelText, // titulo do campo
                              labelStyle: TextStyle(  color: Colors.deepPurple, ), // titulo do campo
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                            color:  Colors.deepPurple,
                                    )
                              ),
                              focusedBorder:  const OutlineInputBorder(
                                    borderSide:  BorderSide(
                                            color:  Colors.deepPurple,
                                            width: 3.1,
                                    ),
                              )
                      ),
                      style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 20.0,
                      ),
              );
        }


        @override
        Widget build( BuildContext context ) {
                return Scaffold(
                        backgroundColor: const Color.fromARGB(255, 55, 3, 69),
                        appBar: AppBar( //AppBar implementa PreferredSizeWidget()
                                  title:  Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const <Widget>[
                                                     Text("Sign up" ),
                                                     SizedBox( width: 10.0,),
                                                     Icon(  Icons.login ),
                                          ],
                                  ),
                                  centerTitle: true,
                                  toolbarHeight: 50.2,
                                  backgroundColor: Colors.deepPurple,
                        ),
                        body:
                              Center(
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                          Container(
                                                  padding: const EdgeInsets.all(20.0),
                                                  decoration: const   BoxDecoration(
                                                            color:  Color.fromARGB(80, 26, 0, 51),
                                                            borderRadius: BorderRadius.all( Radius.circular(30.0) )
                                                  ),
                                                  constraints:  BoxConstraints(
                                                   //         minWidth: 110.0,
                                                    //        minHeight: 210.0,
                                                            maxHeight:   MediaQuery.of(context).size.height *0.9,
                                                            maxWidth: MediaQuery.of(context).size.width *0.8,
                                                  ),
                                                  child:  Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            mainAxisSize: MainAxisSize.min,
                                                            children:   <Widget>[
                                                                    const Text(
                                                                            "Username",
                                                                            textAlign: TextAlign.center,
                                                                            style: TextStyle( color:   Color.fromARGB(200, 255, 255, 255) , fontSize: 24.0),
                                                                    ),
                                                                    const  SizedBox( height: 30.0 ),

                                                                    this._fieldsFunc( this._fields[0] ),
                                                                    const  SizedBox( height: 25.0 ),

                                                                    this._fieldsFunc( this._fields[1] ),
                                                                    const  SizedBox( height: 25.0 ),

                                                                    this._fieldsFunc( this._fields[2] ),
                                                                    const  SizedBox( height: 25.0 ),
                                                            ]
                                                  )
                                          ),
                                          const  SizedBox( height: 35.0 ),
                                          Container(
                                                  height: MediaQuery.of(context).size.height *0.085,
                                                  width: MediaQuery.of(context).size.width *0.4,

                                                  child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                                backgroundColor: Colors.deepPurple,
                                                                shape: const  RoundedRectangleBorder(
                                                                             borderRadius: BorderRadius.all( Radius.circular(20.0)),
                                                                ),
                                                        ),
                                                        onPressed: (){},
                                                        child: UnconstrainedBox ( // wrap the content to define automatic width
                                                              child:  Row(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: const <Widget>[
                                                                          Icon( Icons.done ),
                                                                          SizedBox( width: 10.0 ),
                                                                          Text("Cadastrar", style: TextStyle(fontSize: 20.0),),
                                                                    ]
                                                              ),
                                                        )
                                                  )
                                          )
                                        ]
                                  ),
                             ),
                      //  bottomNavigationBar: const BottomNavBarComp( curentScreenIndex:  1),
                );
        }
}
