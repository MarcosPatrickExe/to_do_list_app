import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
import '../components/BottomNavBarComp.dart'; 
   
        
// this screen will be replace by the Login view
class Home extends StatefulWidget {  // widget com estado mutavel 

        const Home({ 
             super.key, // recebe e ja envia a key para o construtor
             String this.title = "default name",  // recebe e ja atribui o valor do parametro para a propriedade interna "title". "this.title" pode ter o "String" na frente, mas ele eh detectado por inferencia
        })
        final String title; 
        // toda classe com propriedades final devem ter um construtor const !!

        @override
        State<Home> createState() {  
             return _HomeState();// retornando a classe estado com interface do estado
        }
}



// componente que representa o estado da pagina  "MyHomePage"
class _HomeState extends State<Home> {
        int _counter = 0; 
        static dynamic _itemIndexSelect = 0;
        // a declaracao 'dynamic' define que a variavel tem um tipo dinamico, ou que pode ser de qualquer tipo

        //  static final List<IScenes> pages = [MyHomePage(title: 'Incrementor',), LoremIpsum(), Options() ];

        void incrementCounter() {
              super.setState(() { // passando funcao lambda/callback para o setState
                      this._counter++; // aqui o 'this' nao eh necessario
                      //OU:   setState(  () =>  this._counter++  );
              });
        }


        // a funcao "build" abaixo funciona como um renderizador do State
        @override       // "context" eh um elemento que aponta para "MyHomePage" , o qual eh um Widget que esta dentro de uma arvore
        Widget build( BuildContext context ) { //chamado toda vez que o estado setState() eh alterado!!

              return Scaffold(
                      backgroundColor: const Color.fromARGB(255, 55, 3, 69),
                      appBar: AppBar(
                              centerTitle: true,
                              toolbarHeight: 50.2,
                              backgroundColor: Colors.deepPurple,
                              toolbarTextStyle: const TextStyle(
                                      color:  Color.fromARGB( 1, 254, 0, 0)
                              ),
                              title:  Text( super.widget.title ),   // o "widget" eh uma propriedade exclusiva da classe State e a propriedade "title" foi adquirida atraves do State<MyHomePage>
                      ),

                      body: Center(
                            child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                        const Text(
                                                'Voce apertou o botao N vezes: ',
                                                style: TextStyle( color: Colors.white),
                                        ),
                                        Text(    // realizando a interpolacao dentro da propria string abaixo
                                                'número atual $_counter',
                                                style: const TextStyle( color: Colors.white, fontSize: 40.1),
                                                // style: Theme.of(context).textTheme.headlineMedium,
                                        ),
                                        Text(
                                                'Nome do titulo da classe StatefullWidget:  ${super.widget.title} ',
                                                style: const TextStyle( color: Colors.white, fontSize: 10.0),
                                        ),
                                  ],
                            ),
                      ),


                      persistentFooterButtons: <Widget>[
                              Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:   <Widget>[
                                            FloatingActionButton (
                                                    onPressed:  this.incrementCounter, // passando funcao que sera executada
                                                    // aqui o 'this' eh opcional
                                                    tooltip: 'Increment',
                                                    child:  const Icon(Icons.add),
                                            ),
                                            FloatingActionButton(
                                                    heroTag: UniqueKey(), // prevents the error:  "There are multiple heroes that share the same tag within a subtree."
                                                    onPressed: () { 
                                                            super.setState( ()=> {  _counter-- } );
                                                            // alterando o estado manualmente sem usar libraries do flutter
                                                    },
                                                    backgroundColor: Colors.red,
                                                    child:  const Icon(Icons.minimize),
                                            ),
                                    ],
                              )
                      ],

                      bottomNavigationBar: const BottomNavBarComp( curentScreenIndex: 0 ),
                      
              );
        }
}

