import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/main.dart';


class Scenes{   }


class Incrementor{

}




class LoremIpsum extends StatelessWidget implements Scenes{
          const LoremIpsum({super.key});

          @override
          Widget build(BuildContext context) {
                return Scaffold(
                        appBar: AppBar( //AppBar implementa PreferredSizeWidget()
                                title:  const Text("Lorem Ipsum" ),
                        ),
                        body: Center(
                              child: ElevatedButton(
                                    onPressed: (){      },
                                    child: const Text("Hi there!!"),
                              ),
                        ),
                        persistentFooterButtons: [],
                );
          }
}



class Options extends StatelessWidget implements Scenes {
          const Options({super.key})

          @override
          Widget build(BuildContext bc){
                  return Scaffold(
                            appBar: AppBar(
                                  title: const Text("Options"),
                            ),
                           body: const Center(
                                 child: Text(" Body of options...."  ),
                           ),
                          persistentFooterButtons: [],
                  );
          }
}