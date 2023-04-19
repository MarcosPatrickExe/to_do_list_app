import 'package:flutter/material.dart';
import '../pages.dart';
import '../main.dart';


class BottomNavBarComp extends StatelessWidget {
        const BottomNavBarComp(  { super.key, required this.curentScreenIndex } );

        //  const BottomNavBarComp(
        //            final Key? keyreceived,  // AQUI O 'keyreceived' eh obrigatorio e eh enviado para o  super-construtor nomeado via ":super(key: keyreceived)"
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
                dynamic index = this.curentScreenIndex;
                print('current screen is:  $index'  );


                void  onTapItem( int index ){

                          switch(index){
                                case 0:
                                            Navigator.push(
                                                buildContext,
                                                MaterialPageRoute( builder: (BuildContext bc) =>  const MyHomePage(title: 'Home Incrementor') )
                                        );
                                        break;
                                case 1:
                                        Navigator.push(
                                                buildContext,
                                                MaterialPageRoute( builder: (BuildContext bc) => const LoremIpsum() )
                                        );
                                      break;
                                case 2:
                                        Navigator.push(
                                                buildContext,
                                                MaterialPageRoute(builder: (BuildContext bc) => Options()),
                                       );
                                       break;
                                case 3:
                                        Navigator.push(
                                                buildContext,
                                                MaterialPageRoute(builder: (BuildContext bc) => const Users()),
                                        );
                                        break;
                          }
                }


                return BottomNavigationBar (
                                unselectedItemColor: Colors.white,
                                unselectedLabelStyle: const TextStyle(color: Colors.white),
                                selectedItemColor: const Color.fromARGB(255, 55, 3, 69),
                                onTap: onTapItem,
                                currentIndex: index,
                                showUnselectedLabels: true,

                                items: const <BottomNavigationBarItem>[
                                        BottomNavigationBarItem(
                                                label: "Incrementor",
                                                icon: Icon( Icons.numbers ),
                                                backgroundColor:  Colors.deepPurple,
                                        ),
                                        BottomNavigationBarItem(
                                                label: "LoremIpsum",
                                                icon: Icon( Icons.list ),
                                                backgroundColor:  Colors.deepPurple,
                                        ),
                                        BottomNavigationBarItem(
                                                label: "Options",
                                                icon: Icon( Icons.image ),
                                                backgroundColor:  Colors.deepPurple,
                                        ),
                                        BottomNavigationBarItem(
                                                label: 'Users',
                                                icon: Icon( Icons.message ),
                                                backgroundColor:  Colors.deepPurple,
                                        ),
                                ],
                );
        }

      /*  BottomButtons( Function funcItem){
                 this._onTapItem = funcItem;
        }*/
}
