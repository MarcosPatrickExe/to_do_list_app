import 'package:flutter/material.dart';

void main() {
         runApp(  new GiftApp()  ); // antes: const MyApp()
}


class GiftApp extends StatelessWidget {

        @override
        Widget build(BuildContext context) { // funcao q constroi seu wiget
              return MaterialApp(
                        title: "GifFlu",
                        home: new Scaffold( //home eh a tag q espera uma pagina representada por uma classe Widget
                                appBar: new AppBar(
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





class MyApp extends StatelessWidget {
          const MyApp({super.key});

          // This widget is the root of your application.
          @override
          Widget build(BuildContext context) {
            return MaterialApp(
                    title: 'Flutter Demo',
                    theme: ThemeData(
                            primarySwatch: Colors.blue,
                    ),
                    home: const MyHomePage(title: "testando"),
                          // use 'const' para somente construtores declarados com 'const'. Ele eh opcional
            );
          }
}



class MyHomePage extends StatefulWidget {  // widget com estado mutavel
        const MyHomePage({ // parametros dentro de chaves sao opcionais, exceto aqueles com "required"
                    super.key, // recebe e ja envia a key para o construtor
                    required this.title // recebe e ja atribui o valor do parametro para a propriedade interna "title". "this.title" pode ter o "String" na frente, mas ele eh detectado por inferencia
        });
       final  String title;
        // toda classe com propriedades final devem ter um construtor const !!

        @override
        State<MyHomePage> createState() => _MyHomePageState();
}




class _MyHomePageState extends State<MyHomePage> {
        int _counter = 0;

        void _incrementCounter() {
              setState(() {
                      _counter++;
              });
        }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
