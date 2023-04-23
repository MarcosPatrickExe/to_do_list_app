import 'package:flutter/material.dart';
// import 'package:http/http.dart';
import 'package:http/http.dart' as http ;
import 'package:to_do_list/codeModels/member.dart';
import 'dart:convert'; //converter/mapear  json em  objeto
import 'Components/model.dart';


class IScenes {   }


class Users extends StatefulWidget{
        const Users( {super.key} );

        @override
        State<Users> createState() =>  UsersState();
}

class UsersState extends State<Users>{
     // const  UsersState( {keyReceived} ) :  super(key : keyReceived);
        late   List<Member>  _members = [];
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
                              this._members = jsonDecode( response.body);
                              print(_members);
                    } );
        }

        Widget _buildRow( int position ){

                  return ListTile(
                              leading:  CircleAvatar(
                                    backgroundColor:  Colors.green,
                                    backgroundImage:   Image.network(  _members[position].avatarUrl  ) as ImageProvider<NetworkImage>,
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
                                  padding: const EdgeInsets.all(18.0),  // atribuindo o padding para todos os lados
                                  itemCount: this._members.length,
                                  itemBuilder: (BuildContext buildCont, int position ) => _buildRow( position ) ,
                        ),
                        bottomNavigationBar: const BottomNavBarComp(curentScreenIndex: 3),
                );
       }
}




class LoremIpsum extends StatelessWidget implements IScenes{
          const LoremIpsum( {super.key} );

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
                        bottomNavigationBar: const BottomNavBarComp( curentScreenIndex:  1),
                );
          }
}



class Options extends StatelessWidget implements IScenes {
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