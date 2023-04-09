import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/main.dart';

class Elements extends Widget{
          Elements( {this.bodyy, this.footerBottoms: } )

           Widget?  bodyy = null;
           List<Widget>?  footerBottoms;

          @override
          Element createElement() {
            // TODO: implement createElement
            throw UnimplementedError();
          }
}



class Incrementor extends State<MyHomePage>{

        int _counter = 0;

        void incrementCounter(){
          super.setState(  () =>  this._counter++  );
        }

        @override
        List<Widget> build(BuildContext context) {
           return
                  List<Widget> footerBottoms = <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: incrementCounter, // aqui o 'this' eh opcional
                                tooltip: 'Increment',
                                child: Icon(Icons.add),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    _counter--;
                                  });
                                },
                                backgroundColor: Colors.red,
                                child: Icon(Icons.minimize),
                              ),
                            ],
                          )
                        ];
        }




        @override
        Widget build( BuildContext context ){
                     return Elements( bodyy:  Center(
                            child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                            'Nome do titulo da classe StatefullWidget:  ${super.widget.title} ',
                                            style: TextStyle( color: Colors.white),
                                      ),
                                      Text(
                                            'Voce apertou o botao N vezes: ',
                                            style: TextStyle( color: Colors.white),
                                      ),
                                      Text(
                                            'número atual $_counter',
                                            style: const TextStyle( color: Colors.white, fontSize: 40.1),
                                           // style: Theme.of(context).textTheme.headlineMedium,
                                      ),
                                    ],
                            ),
                           footerBottoms: <Widget>[

                           ],
                      );
                    )
        }
}