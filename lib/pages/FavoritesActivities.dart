import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Activity.dart';
import '../components/FavoriteActivityCard.dart';



class FavoriteActivities extends StatelessWidget {


      final List<Activity> _activitiesList;
      FavoriteActivities( this._activitiesList );


      @override
      Widget build( BuildContext bc ){

               return Scaffold(
                          backgroundColor: const Color.fromARGB(255, 55, 3, 69),
                          appBar: AppBar(
                                    backgroundColor: Colors.deepPurple,
                                    title: Row (
                                          mainAxisAlignment:  MainAxisAlignment.center,
                                          children: const <Widget>[
                                                 Text("My favorite activities"),
                                                 SizedBox(width: 10.0),
                                                 Icon( Icons.star ),
                                          ],
                                    ),
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
                                        child:   this._activitiesList.isEmpty
                                              ?  const ListTile(
                                                        contentPadding: EdgeInsets.only(left: 40),
                                                        leading: Icon( Icons.star, size: 30, color: Color.fromARGB(255, 120, 120, 120), ),
                                                        title: Text( "Ainda não há atividades com alta prioridade", style: TextStyle(fontSize: 15.0, color: Color.fromARGB(155, 255, 255, 255) ), ),
                                              )
                                              : ListView.builder(
                                                        itemCount: this._activitiesList.length,
                                                        itemBuilder: (BuildContext bcontxt, int index){

                                                              if (this._activitiesList[index].isComplete ) {
                                                                      return FavoriteActivityCard(
                                                                                 favoriteActivity: this._activitiesList[index]
                                                                      );
                                                              }
                                                              return  SizedBox(); // deve-se retornar qualquer classe
                                                            // desde que nao seja null, pois assim o itemBuilder vai parar de
                                                            // executar o callback e o resto dos Cards nao serao renderizados!
                                                        }
                                               ),

                                 ),
                          ),
               );
      }
}
