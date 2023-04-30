import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Activity.dart';
import '../pages/FavoritesActivities.dart';


class ActivityList extends StatelessWidget{

      final _listActivities = <Activity>[
                  Activity(
                          "Comprar ração do gato",
                          "Lembre-se de resolver a para do motorista.....",
                          DateTime(2023, 04, 10),
                          DateTime(2023, 04, 20),
                          "João",
                          false
                  ),
                  Activity(
                          "Malhar às 17h",
                          "Lembre-se de resolver a para do motorista.....",
                          DateTime(2023, 04, 10),
                          DateTime(2023, 04, 20),
                          "João",
                          true
                  ),
                  Activity(
                          "Resolver algo",
                          "Lembre-se de resolver a para do motoristaLembre-se de resolver a para do motoristaLembre-se de resolver a para do motorista.....",
                           DateTime(2023, 04, 10),
                           DateTime(2023, 04, 20),
                          "João",
                          false
                  ),
                  Activity(
                          "Comprar ração do gato",
                          "Lembre-se de resolver a para do motorista.....",
                          DateTime(2023, 04, 10),
                          DateTime(2023, 04, 20),
                          "João",
                          false
                  ),
                  Activity(
                          "Malhar às 17h",
                          "Lembre-se de resolver a para do motorista.....",
                          DateTime(2023, 04, 10),
                          DateTime(2023, 04, 20),
                          "João",
                          false
                  ),
                  Activity(
                          "Resolver algo",
                          "Lembre-se de resolver a para do motoristaLembre-se de resolver a para do motoristaLembre-se de resolver a para do motorista.....",
                          DateTime(2023, 04, 10),
                          DateTime(2023, 04, 20),
                          "João",
                          true
                  ),
      ];



      @override
      Widget build( BuildContext context ) {
                return Scaffold(
                          backgroundColor: const Color.fromARGB(255, 55, 3, 69),
                          appBar: AppBar(
                                    title: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                                      Icon( Icons.task ),
                                                      SizedBox( width: 13.0,),
                                                      Text("My activities"),
                                            ],
                                    ),
                                    toolbarHeight: 50.2,
                                    backgroundColor: Colors.deepPurple,
                          ),
                          body: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Container( // retangulo escuro
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                                      color: Color.fromARGB(20, 0, 0, 0),
                                                      borderRadius: BorderRadius.all( Radius.circular(25.0)),
                                            ),
                                            padding: EdgeInsets.all(20.0),
                                            child: ListView.builder(
                                               //     padding: EdgeInsets.all(20.0),
                                                    itemCount: this._listActivities.length,
                                                    itemBuilder: (BuildContext ctx, int position){
                                                              return Column(
                                                                  children: [
                                                                        ListTile(
                                                                                contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20.0),
                                                                                tileColor: const Color.fromARGB(175, 87,  5,  110),
                                                                                shape:  const RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.all( Radius.circular(10.0)  ),
                                                                                ),
                                                                                leading: Icon( Icons.note, color: Colors.white, size: 30.0),
                                                                                title:  Padding( // espaco para distanciar title de subtittle
                                                                                              padding: EdgeInsets.only(bottom: 8.5),
                                                                                              child: Text(
                                                                                                    this._listActivities[position].title,
                                                                                                    style: TextStyle( fontSize: 20.0, color: Colors.white),
                                                                                           ),
                                                                                ),
                                                                                subtitle:  Text(
                                                                                            this._listActivities[position].description ?? "<Não definido>",
                                                                                            maxLines: 3,
                                                                                            style: const TextStyle(
                                                                                                      fontSize: 12,
                                                                                                      color: Colors.white54,
                                                                                                      fontWeight: FontWeight.w100
                                                                                            ),
                                                                                ),
                                                                                trailing: Icon(
                                                                                            this._listActivities[position].isComplete ?
                                                                                                        Icons.star  :
                                                                                                        Icons.star_border_outlined
                                                                                            , color: Colors.yellow,
                                                                                               size: 33.0,
                                                                                ),
                                                                       ),
                                                                       SizedBox(height: 17.5),// aplicando um espaco entre as atividades
                                                                 ]
                                                             );
                                                    },
                                          ),
                                     ),
                          ),
                          bottomNavigationBar:  BottomNavigationBar(
                                    backgroundColor: Colors.deepPurple,
                                    unselectedItemColor: Colors.white,
                                    selectedItemColor: const Color.fromARGB(155, 36, 2, 44),
                                    currentIndex: 0,

                                    onTap: (int pos){
                                          if (pos != 0) {
                                                  Navigator.push( context,  MaterialPageRoute(
                                                               builder: ( BuildContext newContext) => FavoriteActivities( this._listActivities )
                                                        )
                                                  );
                                          }
                                    },

                                    items:  const <BottomNavigationBarItem>[
                                             BottomNavigationBarItem(
                                                     icon: Icon(Icons.note),
                                                     label: "My activities",
                                             ),
                                            BottomNavigationBarItem(
                                                     icon: Icon(Icons.star),
                                                     label: "Favorities",
                                            ),
                                    ],
                          ),


               );
             //   throw UnimplementedError();
      }
}
