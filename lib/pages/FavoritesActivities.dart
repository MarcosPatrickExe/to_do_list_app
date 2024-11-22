import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Activity.dart';  
import '../components/FavoriteActivityCard.dart';  
    
   
// aqui ainda nao foi implementado o gerenciamento de estado com Bloc e Provider
class FavoriteActivities extends StatefulWidget {

        // propriedades que serao inicializadas mais tarde na clsse 'FavoriteActivityState'
        late List<Activity> activitiesList;
        late Function changeList;
        FavoriteActivities(this.activitiesList, this.changeList, {super.key});// construtor padrao

        @override
        State<FavoriteActivities> createState() => FavoriteActivitiesState( );
} 



// classe para inserir o state-full widget
class FavoriteActivitiesState extends State<FavoriteActivities>{

      void removeFavoriteItemList( Activity atividade  ){
            super.setState(() {
                     super.widget.activitiesList.remove( atividade);
                     super.widget.changeList( super.widget.activitiesList ) ;
            });
      }


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
                                        child:  super.widget.activitiesList.every( (Activity act) => act.isFavorite==false  )
                                              ?  const ListTile(
                                                        contentPadding: EdgeInsets.only(left: 30),
                                                        leading: Icon( Icons.star, size: 30, color: Color.fromARGB(255, 120, 120, 120), ),
                                                        title: Text( "Ainda não há atividade(s) marcada(s) como favoritas...", style: TextStyle(fontSize: 15.0, color: Color.fromARGB(155, 255, 255, 255) ), ),
                                              )
                                              : ListView.builder(
                                                        itemCount: super.widget.activitiesList.length,
                                                        itemBuilder: (BuildContext bcontxt, int index){

                                                              if ( super.widget.activitiesList[index].isFavorite ) {
                                                                      return FavoriteActivityCard(
                                                                                 favoriteActivity:  super.widget.activitiesList[index]
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
