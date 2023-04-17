import 'package:flutter/material.dart';


class Bottombuttons{
        BottomButtons( Function funcItem){
                this._onTapItem = funcItem;
        }

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
                                    MaterialPageRoute( builder: (context) =>  Options() )
                                );
                                //  _MyHomePageState._itemIndexSelect = 2;
                                break;
                }
        }

        
        static  BottomNavigationBar btnNbar =  BottomNavigationBar (
                backgroundColor: Colors.deepPurple,
                unselectedItemColor: Colors.white,
                selectedItemColor: const Color.fromARGB(255, 55, 3, 69),
               onTap: this._onTapItem,

                items: const  <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                                label: "Incrementor",
                                icon: Icon( Icons.numbers  ),
                        ),
                        BottomNavigationBarItem(
                                label: "List of users",
                                icon: Icon( Icons.list  ),
                        ),
                        BottomNavigationBarItem(
                                label: "Options",
                                icon: Icon( Icons.image  ),
                        ),
                ],
        );
}