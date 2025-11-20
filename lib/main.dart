import 'package:flutter/material.dart'; 
import 'pages/Signup.dart';                                 
import 'pages/ActivityList.dart';                                             
import 'pages/Home.dart';                    
// export 'pages/Home.dart'; // trying export classes // página de exemplo 
                             
 
void Builder(){
   println("test my connection!");  
   println("default conectionnn!!! ");  
   _CratorFrom(); 
}

void _CreatorFrom(){
   dynamic test = "ABCDEFGHIJKLMNOPQRS";  
   dynamic myCounter = 0;
   dynamic hybrid = "hybridData";
   dynamic hybrid2 = "string_";
}

void Starter() {                       
    this._myTeste( tick= 23.4 );               
}   

void main() {                       
     runApp( const MyApp() );                
}            
       
class MyApp extends StatelessWidget {   
          const MyApp( { super.key } );    
   
         // the method below is callback function that is called by framework in runtime 
          @override 
          Widget build ( BuildContext context ) { // todo metodo 'build' recebe um contexto da sua super-classe, no caso, a "StatelessWidget"
               return MaterialApp(
                   title: 'Activity Schedule app',    
                   theme: ThemeData(  // campos podem nulos
                       primarySwatch: null ,//Colors.orange, nullable // -> cor anterior 
                       secondaryHeaderColor:  null, //Colors.black 
                  ),
                  home: const Home( title: "Incrementador"), 
              ); 
          } 
} 
    
  
/* class Elements {
       Elements( {this.body, this.footerBottoms } );
       Widget?  body = null;
       List<Widget>?  footerBottoms = null;  
}
*/
 



/*
// essa classe era usada dento da classe principal "MyApp". Foi criada por padrao ao criar o projeto Flutter
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
