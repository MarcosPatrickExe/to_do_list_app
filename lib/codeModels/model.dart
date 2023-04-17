import 'package:flutter/material.dart';
import '../pages.dart';


class BottomNavBarComp extends StatefulWidget {


        @override
        State<BottomNavBarComp> createState() {
                        return BottomNavBarState();
        }
}


class BottomNavBarState extends State<BottomNavBarComp>{

        @override
        Widget build(BuildContext bc){
                return Scaffold(
                        bottomNavigationBar:  BottomNavigationBar (
                                backgroundColor: Colors.deepPurple,
                                unselectedItemColor: Colors.white,
                                selectedItemColor: const Color.fromARGB(255, 55, 3, 69),
                                onTap: this._onTapItem,

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
                        )
               );
        }

      /*  BottomButtons( Function funcItem){
                 this._onTapItem = funcItem;
        }*/

        void _onTapItem(int index){
                        //   setState(() => _itemIndexSelect = index );
                        switch(index){
                                        case 1:
                                                Navigator.push(
                                                super.context,
                                                MaterialPageRoute( builder: (context) => const LoremIpsum() )
                                                );
                                                // _MyHomePageState._itemIndexSelect = 1;
                                                break;
                                        case 2:
                                                Navigator.push(
                                                super.context,
                                                MaterialPageRoute( builder: (context) => Options() )
                                                );
                                                //  _MyHomePageState._itemIndexSelect = 2;
                                                break;
                        }
        }
}
