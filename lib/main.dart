import 'package:flutter/material.dart';
import 'pages/Signup.dart';
import 'pages/ActivityList.dart';
import 'pages/Home.dart';
// export 'pages/Home.dart'; // tentando exportar as classes / Widgets do app
// export 'pages/Home.dart'; // tentando exportar as classes / Widgets do app
// export 'pages/Home.dart'; // tentando exportar as classes / Widgets do app

// aqui nesse arquivo 'main' futuramente pdera ser adicionado um BlocProvider

void main() {
     runApp( const MyApp() );
    // 'runApp' eh um metodo declarado na super-classe que recebe qualquer objeto Widget, ou que estende ele
     // only for test
}
// descriptions here! !!!


// classe com construtor const que inicialmente eh usada pelo "runApp()"
class MyApp extends StatelessWidget {
          const MyApp({ super.key }); // construtores "const" sao opcionais !!

         // the method below is callback function that is called by framework in runtime
          @override
          Widget build ( BuildContext context ) { // todo metodo 'build' recebe um contexto da sua super-classe, no caso, a "StatelessWidget"
                  return MaterialApp(
                            title: 'Activity Schedule app',  
                            theme: ThemeData(  // campos podem nulos
                                    primarySwatch: null ,//Colors.orange, nullable // -> cor anterior
                                    secondaryHeaderColor:  null, //Colors.black
                            ),
                            home: const  Home( title: "Incrementador"),
                  );
          }// closed build method
}


// aqui seria uma interface para elementos com duas propriedades opcionais para o construtor
/* class Elements {
        Elements( {this.body, this.footerBottoms } );

        Widget?  body = null;
        List<Widget>?  footerBottoms = null;
}*/




/*
// essa classe anteriormente era usada dento da classe principal "MyApp". Foi criada por padrao ao criar o projeto Flutter
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
                            primarySwatch: Colors.indigo,  // -> azul claro
                            visualDensity: VisualDensity.adaptivePlatformDensity
                        )
              );
              //  throw UnimplementedError();
        }
}
*/
