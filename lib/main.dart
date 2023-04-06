import 'package:flutter/material.dart';

void main() {
         runApp(  const  MyApp()  ); // antes: const MyApp()
}


class GiftApp extends StatelessWidget {

        @override
        Widget build(BuildContext context) { // funcao q constroi seu wiget
              return MaterialApp(
                        title: "GifFlu",
                        home:  Scaffold( //home eh a tag q espera uma pagina representada por uma classe Widget
                                appBar:  AppBar( // o instanceamento de Widgets/classes podem ser feitos sem o "new"
                                      title: Text("Hello from demo!!"),
                                ),
                        ),
                      theme: ThemeData(  // o new eh opcional
                           primarySwatch: Colors.indigo,
                           visualDensity: VisualDensity.adaptivePlatformDensity
                      )
              );
              //  throw UnimplementedError();
        }
}




// classe com construtor const  q inicialmente eh usada pelo "runApp()"
class MyApp extends StatelessWidget {
          const MyApp({super.key}); // construtores "const" sao opcionais !!

          @override
          Widget build ( BuildContext context ) {
            return MaterialApp(
                    title: 'Flutter Demo',
                    theme: ThemeData(
                            primarySwatch: null ,//Colors.orange,
                            secondaryHeaderColor:  null, //Colors.black
                    ),
                    home: const MyHomePage(title: "Meu primeiro app"), // neste exemplo o home eh uma outra classe, mas tbm pode ser configurado sem outra classe, assim como na classe "GiftApp"
                          // use 'const' para somente construtores declarados com 'const'. Ele eh opcional
            );
          }
}


 // componente que representa uma pagina com estado dinamico, o qual vai ser gerenciado pela classe "_MyHomePageState"
class MyHomePage extends StatefulWidget {  // widget com estado mutavel
          const MyHomePage({ // parametros dentro de chaves sao opcionais, exceto aqueles com "required"
                    super.key, // recebe e ja envia a key para o construtor
                    required this.title // recebe e ja atribui o valor do parametro para a propriedade interna "title". "this.title" pode ter o "String" na frente, mas ele eh detectado por inferencia
        });
         final String title;
        // toda classe com propriedades final devem ter um construtor const !!

        @override
        State<MyHomePage> createState() {
               return _MyHomePageState();// retornando a classe estado com interface do estado
        }
}

  // componente que representa o estado da pagina  "MyHomePage"
class _MyHomePageState extends State<MyHomePage> {
        int _counter = 0; // variavel pertecente a interface (build()) do State

        void _incrementCounter() {
              setState(() { // passando funcao lambda/callback para o setState
                      this._counter++; // aqui o 'this' nao eh necessario
              });
        }

        // a funcao "build" abaixo funciona como um renderizador do State
        @override
        Widget build( BuildContext context ) { //chamado toda vez que o estado setState() eh alterado!!
                return Scaffold(
                         backgroundColor: Colors.deepPurple,
                          appBar: AppBar(
                                  centerTitle: true,
                                  toolbarHeight: 40.2,
                                  backgroundColor: Colors.orange,
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
                                                  Text(
                                                          'número atual $_counter',
                                                          style: Theme.of(context).textTheme.headlineMedium,
                                                  ),
                                        ],
                                ),
                          ),

                          persistentFooterButtons: <FloatingActionButton>[
                                   FloatingActionButton(
                                          onPressed: this._incrementCounter, // aqui o 'this' eh opcional
                                          tooltip: 'Increment',
                                          child: const Icon(Icons.add),
                                  ),
                                FloatingActionButton(
                                          onPressed: () {
                                               setState ( () =>  this._counter-- ) ;
                                          },
                                          backgroundColor: Colors.red,
                                          child: const Icon(Icons.minimize),
                                ),
                          ],

                          /*
                          *     bottomNavigationBar: BottomNavigationBar(
                                    items: const <BottomNavigationBarItem>[
                                           BottomNavigationBarItem (
                                                  icon: Icon(Icons.minimize),
                                                  backgroundColor: Colors.red,
                                                  label: "est",
                                            ),
                                            BottomNavigationBarItem (
                                                  icon: Icon(Icons.minimize),
                                                  backgroundColor: Colors.red,
                                                  label: "test2",
                                            ),
                                    ]

                          ),
                          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
                          *
                          * */


                );
        }
}
