import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/pages/FavoritesActivities.dart';
import '../models/Activity.dart';


// classe sem estado pq servira de modelo de Card para exibicao das informacoes
class FavoriteActivityCard extends StatelessWidget{

                  // por convencao, as propriedades privadas sao iniciadas com underline, como no python
      final Activity _activityReceived;
      
      FavoriteActivityCard({ required Activity favoriteActivity }): this._activityReceived = favoriteActivity;
                                // parametro nomeado e obrigatorio

      @override
      Widget build( BuildContext  favoriteActivitiesContext ){
            return Card(
                      margin: const EdgeInsets.all(10.0),
                      color: const Color.fromARGB(175, 87,  5,  110),
                      shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all( Radius.circular(20.0) ) // aplicando a borda redonda em todos os vertices (ou edges)
                      ),
                      child: Container(
                        //   height: 20.0,
                           padding: EdgeInsets.all(10.0),
                           child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // colocando espaco entre elementos
                                  children: [
                                          const Icon( Icons.star, size: 30, color: Colors.amber, ),
                                          SizedBox( width: 20.0, ),
                                          Column(
                                                crossAxisAlignment: CrossAxisAlignment.start, //alinhamento vertical
                                                children: [
                                                      Container(
                                                            width: 210,
                                                            child: Text( this._activityReceived.title, style: TextStyle( fontSize: 20.0, color: Colors.white), ),
                                                      ),
                                                      SizedBox( height: 10.0, ), // SizedBox foi colocada para dar espacamento
                                                      Container(
                                                             width: 210.0,
                                                             child: Text( this._activityReceived.description ?? "" ,  maxLines: 2, style: TextStyle( fontSize: 12.0, color: Colors.white54, ), ),
                                                      ),
                                               ],
                                          ),
                                          PopupMenuButton( // inserindo menu pop-up ou um dialog para a inserçao de uma caixa de dialogo que sobreponha a tela atual
                                                  icon: Icon( Icons.more_vert, color: Colors.white70, size: 20, ),
                                                  itemBuilder: (BuildContext bc)=>[ // passando um callback para o builder (ou construtor)
                                                          PopupMenuItem(
                                                                child: ListTile(
                                                                        title: Text("Remover tarefa"),
                                                                        onTap: (){
                                                                                Navigator.pop( bc ); //Volta para a tela anterior de acordo com o BuildContext ou "bc" recebido
                                                                                favoriteActivitiesContext // contexto que representa a classe-pai "FavoritiesAcitivitiesState"
                                                                                        .findAncestorStateOfType<FavoriteActivitiesState>()
                                                                                                ?.removeFavoriteItemList( this._activityReceived ); // metodo da classe-pai "FavoritiesAcitivitiesState"
                                                                        },                   // usando operador null-safety pra caso o estado anterior seja vazio
                                                                )
                                                          )
                                                 ]
                                          )
                                  ],
                            ),
                      )
            );
      }
}
