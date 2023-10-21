import 'package:flutter/material.dart'; // importando pacote base do flutter
import 'package:to_do_list/pages/ActivityList.dart';
import '../pages/Users.dart';
import '../pages/Signup.dart';
import '../pages/Home.dart';
import '../pages/Community.dart';


// classe sem estado, apenas com foco no visual
class BottomNavBarComp extends StatelessWidget {  // 'currentScreenIndex' eh obrigatorio aqui
        const BottomNavBarComp(  { super.key, required this.curentScreenIndex } ); // recebendo a 'key' e a enviando para a super-classe
        // construtor 'const' so pode ser instanciado uma vez
        
        
        //  const BottomNavBarComp(
        //            final Key? keyreceived,  // AQUI O 'keyreceived' eh obrigatorio, mas pode ser null, e eh enviado para o  super-construtor nomeado via ":super(key: keyreceived)"
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

                // criando metodo privado sem retorno
                void  _onTapItem( int index ){
                          switch( index ){
                                case 0:
                                         Navigator.push(
                                                  buildContext,
                                                  MaterialPageRoute( builder: (BuildContext bc) =>  const Home( title: 'Home Incrementor' ) )
                                         );
                                        break;
                                case 1:
                                          Navigator.push(
                                                  buildContext,
                                                  MaterialPageRoute( builder: (BuildContext bc) =>  ActivityList() )
                                          );
                                          break;

                         // comentando os botoes abaixo, pois serao usados posteriormente
                          /*
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
                                backgroundColor:  Colors.deepPurple,

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
                                        ),
                                ],
                );
        }// build()


      /*  BottomButtons( Function funcItem){
                 this._onTapItem = funcItem;
        }*/
}
