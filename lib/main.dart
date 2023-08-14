import 'package:flutter/material.dart';
import 'pages/Signup.dart';
import 'pages/ActivityList.dart';
import 'pages/Home.dart';

// export 'pages/Home.dart'; // tentando exportar as classes / Widgets do app
// export 'pages/Home.dart'; // tentando exportar as classes / Widgets do app
// export 'pages/Home.dart'; // tentando exportar as classes / Widgets do app


void main() {
         runApp(   const MyApp()  ); // antes: const MyApp()
}


// classe com construtor const  q inicialmente eh usada pelo "runApp()"
class MyApp extends StatelessWidget {
          const MyApp({super.key}); // construtores "const" sao opcionais !!

          @override
          Widget build ( BuildContext context ) {
                  return MaterialApp(
                            title: 'Demo app',
                            theme: ThemeData(
                                    primarySwatch: null ,//Colors.orange,
                                    secondaryHeaderColor:  null, //Colors.black
                            ),
                            home: const  Home(title: "Incrementador"),
                  );
          }
}



/*class Elements {
        Elements( {this.body, this.footerBottoms } );

        Widget?  body = null;
        List<Widget>?  footerBottoms = null;
}*/




/*
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
*/
