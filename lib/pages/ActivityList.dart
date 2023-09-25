import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Activity.dart';
import '../pages/FavoritesActivities.dart';



class ActivityList extends StatefulWidget {

            // inserindo dados manualmente para teste
            var listActivities = <Activity>[
                  Activity(
                            "Comprar a ração dos gatos",
                            "Não posso esquecer de maneira alguma de comprar o alimento dos meus filhos....",
                            DateTime(2023, 04, 10),
                            DateTime(2023, 04, 20),
                            "João",
                            false
                  ),
                  Activity(
                            "Malhar às 17h",
                            "Nesse dia será o treino de pernas e agachamento..",
                            DateTime(2023, 06, 10),
                            DateTime(2023, 06, 11),
                            "João",
                            true
                  ),
                  Activity(
                            "Resolver o problema da pia do vizinho",
                            "Meu vizinho faz tempo que me cobra acerca da sua pia da cozinha que fiquei de consertar....",
                            DateTime(2023, 04, 10),
                            DateTime(2023, 04, 20),
                            "João",
                            false
                  ),
                  Activity(
                            "Limpar a casa",
                            "A casa está muito suja, devo ajeitar ela o quanto antes!!",
                            DateTime(2023, 04, 10),
                            DateTime(2023, 04, 20),
                            "João",
                            false
                  ),
                  Activity(
                            "Ir buscar meu filho na escola",
                            "João não pode ficar muito tempo me esperando na escola.",
                            DateTime(2023, 04, 20),
                            DateTime(2023, 05, 25),
                            "João",
                            false
                  ),
                  Activity(
                            "Reunião com o patrão via google meet",
                            "A reunião parece que não vai ser muito longa então após dela ainda posso fazer outras coisas...",
                            DateTime(2023, 02, 2),
                            DateTime(2023, 03, 20),
                            "Maria",
                            true
                  ),
            ];


        @override
        State<ActivityList> createState() => ActivityListState();
        // createState eh um callback que retorna uma instancia da classe State<T>
}





class ActivityListState extends State<ActivityList>{

      // essa funcao vai ser passada para o construtor da classe "FavoritesActivities"
      void changeListFunc( List<Activity> atividades ){
              super.setState(() {
                      super.widget.listActivities = atividades;
              });
      }

      void _changeFavoriteType( int position, Activity atv ){
            super.setState(() {
                      super.widget.listActivities.elementAt(position).isFavorite = !atv.isFavorite;
            });
      }


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
                                                    itemCount: super.widget.listActivities.length,
                                                    itemBuilder: (BuildContext ctx, int position){
                                                              return Column(
                                                                  children: [
                                                                        ListTile(
                                                                                onTap: (){
                                                                                        this._changeFavoriteType(
                                                                                                    position,
                                                                                                    super.widget.listActivities.elementAt(position)
                                                                                        );
                                                                                },
                                                                                contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20.0),
                                                                                tileColor: const Color.fromARGB(175, 87,  5,  110),
                                                                                shape:  const RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.all( Radius.circular(10.0)  ),
                                                                                ),
                                                                                leading: Icon( Icons.note, color: Colors.white, size: 30.0),
                                                                                title:  Padding( // espaco para distanciar title de subtittle
                                                                                              padding: EdgeInsets.only(bottom: 8.5),
                                                                                              child: Text(
                                                                                                    super.widget.listActivities[position].title,
                                                                                                    style: TextStyle( fontSize: 20.0, color: Colors.white),
                                                                                           ),
                                                                                ),
                                                                                subtitle:  Text(
                                                                                            super.widget.listActivities[position].description ?? "<Não definido>",
                                                                                            maxLines: 3,
                                                                                            style: const TextStyle(
                                                                                                      fontSize: 12,
                                                                                                      color: Colors.white54,
                                                                                                      fontWeight: FontWeight.w100
                                                                                            ),
                                                                                ),
                                                                                trailing: Icon(
                                                                                             super.widget.listActivities[position].isFavorite ?
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
                                                  Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                     builder: ( BuildContext newContext) =>
                                                                                FavoriteActivities( super.widget.listActivities, this.changeListFunc )
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
