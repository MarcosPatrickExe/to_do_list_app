import 'package:flutter/material.dart';
import '../pages.dart';
import '../main.dart';


class BottomNavBarComp extends StatefulWidget {
        const BottomNavBarComp(  { super.key, required this.curentScreenIndex } ); //

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
        BottomNavBarState createState() { // retorno tbm pode ser do tipo "BottomNavBarState"
                        return BottomNavBarState();
        }
}


class BottomNavBarState extends State<BottomNavBarComp>{

        @override
        void initState() {
                  super.initState();
                  dynamic index = super.widget.curentScreenIndex;
                  print('current screen is:  $index'  );
        }

        void _onTapItem(int index){
                //   setState(() => _itemIndexSelect = index );
                switch(index){
                        case 0:
                                  Navigator.push(
                                            super.context,
                                            MaterialPageRoute( builder: (context) =>  const MyHomePage(title: 'Home') )
                                  );
                                  // _MyHomePageState._itemIndexSelect = 1;
                                  break;
                        case 1:
                                     Navigator.push(
                                              super.context,
                                              MaterialPageRoute( builder: (context) => const LoremIpsum() )
                                      );
                                  //  _MyHomePageState._itemIndexSelect = 2;
                                  break;
                        case 2:
                                      Navigator.push(
                                              super.context,
                                              MaterialPageRoute(builder: (context) => Options()),
                                      );
                                   break;
                }
        }

        @override
        Widget build( BuildContext bc){
                return BottomNavigationBar (
                                backgroundColor: Colors.deepPurple,
                                unselectedItemColor: Colors.white,
                                selectedItemColor: const Color.fromARGB(255, 55, 3, 69),
                                onTap: this._onTapItem,
                                currentIndex: 1,

                                items: const <BottomNavigationBarItem>[
                                        BottomNavigationBarItem(
                                                label: "Incrementor",
                                                icon: Icon( Icons.numbers ),
                                        ),
                                        BottomNavigationBarItem(
                                                label: "List of users",
                                                icon: Icon( Icons.list ),
                                        ),
                                        BottomNavigationBarItem(
                                                label: "Options",
                                                icon: Icon( Icons.image ),
                                        ),
                                ],
                );
        }

      /*  BottomButtons( Function funcItem){
                 this._onTapItem = funcItem;
        }*/
}
