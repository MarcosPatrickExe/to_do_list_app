import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/BottomNavBar.dart';
import '../Models/member.dart';
import 'package:http/http.dart' as http;//converter/mapear  json em  objeto
import 'dart:convert';



class Users extends StatefulWidget{
        const Users( {super.key} );

        @override
        State<Users> createState() =>  UsersState();
}



class UsersState extends State<Users>{
        // const  UsersState( {keyReceived} ) :  super(key : keyReceived);
        List<Member> _members = <Member>[];
        final _textStyle = const TextStyle( fontSize: 20.0, color: Colors.white);


        @override
        void initState(){
                  super.initState();
                  this._loadData();
        }

        void _loadData() async {  // funcoes assincronas sao disparadas por outro processo ao inves da thread principal, nao interferindo na renderizacao da UI
                String url = "https://api.github.com/orgs/adobe/members";
                http.Response response =  await  http.get( Uri.parse(url) );

                // passando esses dados para a UI thread (a thread principal):
                super.setState( ()  {
                      //  this._members = jsonDecode( response.body);
                         var auxMembers = jsonDecode( response.body );

                         for(var member in auxMembers){
                                this._members.add(
                                         Member( member["login"], member["avatar_url"]  )
                                );
                         }

                        print("=======================> Logins dos MEMBROS OBTIDOS!!!  <============================== \n");
                        print("primeiro user: ${_members[0]}");
                } );
        }



        Widget _buildRow( int position ){
              return ListTile(
                    leading:  CircleAvatar(
                            backgroundColor:  Colors.green,
                            backgroundImage:  NetworkImage(  _members[position].avatarUrl ) , //as ImageProvider<NetworkImage>
                    ),
                    title: Text(
                          _members[position].login,
                          style: this._textStyle,
                    ), // primeiro indice na lista "_members" ira retornar um mapa, e nesse mapa acessamos a chave "login" do JSON obtido
              );
        }



        @override
        Widget build( BuildContext bc ){
              return  Scaffold(
                      backgroundColor: const Color.fromARGB(255, 55, 3, 69),
                      appBar: AppBar(
                              title:  const Text("Users"),
                              centerTitle: true,
                              toolbarHeight: 50.2,
                              backgroundColor: Colors.deepPurple,
                      ),
                      body: ListView.builder( // lista com os membros obtidos da requisicao
                              padding: const EdgeInsets.all(25.0),  // atribuindo o padding para todos os lados
                              itemCount: this._members.length,
                              itemBuilder: (BuildContext buildCont, int position ) => _buildRow( position ) ,
                      ),
                      bottomNavigationBar: const BottomNavBarComp(curentScreenIndex: 3),
              );
        }
}
