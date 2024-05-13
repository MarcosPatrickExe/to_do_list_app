import 'package:flutter/material.dart'; // importando pacote base do flutter
import 'package:to_do_list/pages/ActivityList.dart';
import '../pages/Users.dart';
import '../pages/Signup.dart';
import '../pages/Home.dart';
import '../pages/Community.dart';


class BottomNavBarComp extends StatelessWidget {  
        const BottomNavBarComp( { super.key, required this.curentScreenIndex } ); // recebendo a 'key' e a enviando para a super-classe
        // construtor 'const' so pode ser instanciado uma vez
        
        // opcoes para mudar de pagina
        //  const BottomNavBarComp(
        //            final Key? keyreceived, 
        //            this.curentScreenIndex
        //  ): super(key: keyreceived );

        //   const BottomNavBarComp(
        //                    {    keyreceived ,  // AQUI O 'keyreceived' eh opcional e pode ser enviado para o  super-construtor nomeado via ":super(key: keyreceived)"
        //                         required  this.curentScreenIndex  }
        //    ): super( key: keyreceived );
        //
        final int curentScreenIndex;


        @override
        Widget build( BuildContext buildContext){

                // o 'dynamic' permite definir um tipo qualquer para a propriedade. Esse tipo eh equivalente ao 'any' do TypesSript
                dynamic index = this.curentScreenIndex;
                print('current screen is:  $index'  );
                // print para teste

               
                void  _onTapItem( int index ){
                          switch( index ){
                                case 0:
                                         Navigator.push( // opcao 1
                                                  buildContext,
                                                  MaterialPageRoute( builder: (BuildContext bc) =>  const Home( title: 'Home Incrementor' ) ) // chamando a nova pagina Widget e passando o parametro
                                         );
                                        break;
                                case 1:
                                          Navigator.push(  // opcao 2
                                                  buildContext,
                                                  MaterialPageRoute( builder: (BuildContext bc) =>  ActivityList() )
                                          );
                                          break;

                         // comentando os botoes abaixo, pois serão usdos somente na outra etapa do projeto                          /*
                                case 1:
                                        Navigator.push(
                                                buildContext,
                                                MaterialPageRoute( builder: (BuildContext bc) => const Signup() )
                                        );
                                      break;

                                case 2:
                                        Navigator.push(
                                                buildContext,
                                                MaterialPageRoute(builder: (BuildContext bc) => Community()),
                                       );
                                       break; */
                                case 2:
                                        Navigator.push(
                                                buildContext,
                                                MaterialPageRoute(builder: (BuildContext bc) => const Users()),
                                        );
                                        break;
                          }
                }


                return BottomNavigationBar (
                           unselectedItemColor: Colors.white,
                           unselectedLabelStyle: const TextStyle(color: Colors.white), // cor da letra/label quando nao estiver selecionada
                           selectedItemColor: const Color.fromARGB(255, 55, 3, 69),
                           onTap: _onTapItem, // passando o metodo privado "onTapItem()" para ser executado no momento do clique
                           currentIndex: index,
                           showUnselectedLabels: true,
                           backgroundColor:  Colors.deepPurple,  // roxo escuro

                                items: const <BottomNavigationBarItem>[
                                        BottomNavigationBarItem(
                                                label: "Home",
                                                icon: Icon( Icons.home ),
                                        ),
                                        BottomNavigationBarItem(
                                                label: "My activities",
                                                icon: Icon( Icons.task ),
                                        ),
                                        // comentando 2 botoes, uma vez que deixam a BottomNavigationBar bastante comprimida
                           /*           BottomNavigationBarItem(
                                                label: "Signup",
                                                icon: Icon( Icons.login ),
                                                backgroundColor:  Colors.deepPurple,
                                        ),
                                        BottomNavigationBarItem(
                                                label: "Community",
                                                icon: Icon( Icons.person_sharp ),
                                                backgroundColor:  Colors.deepPurple,
                                        ),  */
                                        BottomNavigationBarItem(
                                                label: 'Users',
                                                icon: Icon( Icons.verified_user_sharp ),
                                                        // Icons are predefined!!
                                        ),
                                ],
                );
        }// build()


      /*  BottomButtons( Function funcItem){
                 this._onTapItem = funcItem;
        }*/
}
