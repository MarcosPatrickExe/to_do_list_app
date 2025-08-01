import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/BottomNavBarComp.dart';
import '../models/Member.dart'; // Member aqui atua como uma interface no TS
import 'package:http/http.dart' as http;//converter/mapear  json em  objeto
import 'dart:convert';


// Aqui é feita uma requisição para uma API do github para recuperar alguns membros e assim montar a interface
class Users extends StatefulWidget{
        const Users( {super.key} ); // construtor nomeado, enviando valor para a super-classe

        @override
        State<Users> createState() =>  UsersState();// retornando a subclasse
}
 


class UsersState extends State<Users>{
        // const  UsersState( {keyReceived} ) :  super(key : keyReceived);
        // const String users ="abcde";
        final List<Member>? _members = [];
        final _textStyle = const TextStyle( fontSize: 20.0, color: Colors.white);


        @override
        void initState(){
                  super.initState();
                  this._loadData();
                // this.self();
        }

        // custom function
        void _loadData() async {  // funcoes assincronas sao disparadas por outro processo ao inves da thread principal, nao interferindo na renderizacao da UI
                String url = "https://api.github.com/orgs/adobe/members";
                http.Response response =  await  http.get( Uri.parse(url) ); // o 'await' automaticamente faz com que a funcao '_loadData()' espera até receber a resposta da requisicao 

                // passando esses dados para a UI thread (a thread principal):
                super.setState( ()  {
                      //  this._members = jsonDecode( response.body);
                         var auxMembers = jsonDecode( response.body );

                         for( var member in auxMembers){
                                this._members?.add(
                                         Member( member["login"], member["avatar_url"]  )
                                );
                         }

                        print("=======================> Logins dos MEMBROS OBTIDOS!!!  <============================== \n");
                        print("primeiro user: ${this._members?[0]}");
                } );
        }


      //  basic widget
        Widget _buildRow( int position ){
                return ListTile(
                        leading:  CircleAvatar(
                                backgroundColor:  Colors.deepPurple.shade200, // exibido enquanto a imagem nao estiver sendo carregada
                                backgroundImage:  NetworkImage(  this._members?[position].avatarUrl ?? "" ) , //as ImageProvider<NetworkImage>
                        ),
                        title:  Text(
                              this._members?[position].login ?? "",
                              style: this._textStyle,
                        ), // primeiro indice na lista "_members" ira retornar um mapa, e nesse mapa acessamos a chave "login" do JSON obtido
                        subtitle: const Text(
                                 "subtitle",
                                  style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        style: ListTileStyle.drawer,
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
                      body:  Center(
                            child: Container(
                                    decoration: const  BoxDecoration(
                                            color:  Color.fromARGB(80, 26, 0, 51), //metodo estatico 'fromARGB'
                                            borderRadius: BorderRadius.all( Radius.circular(10.0) )
                                            // color: yellow,
                                    ), 
                                    constraints:  BoxConstraints(
                                            minWidth: 110.0,
                                            minHeight: 210.0,
                                            maxHeight: MediaQuery.of(bc).size.height *0.8, // 'MediaQuery.of(...)' retorna a altura da tela do dispositivo
                                            maxWidth: MediaQuery.of(bc).size.width *0.9,
                                    ),
                                    child: ListView.builder( //ListView com o builder que será carregada
                                            padding: const EdgeInsets.all(20.0), //padding para todas as direcoes
                                            itemCount: this._members?.length,
                                            itemBuilder: (BuildContext bc, int position) => _buildRow(position)
                                    )
                            ),
                      ),
                      bottomNavigationBar: const BottomNavBarComp(curentScreenIndex: 2),
              );
        }
}
