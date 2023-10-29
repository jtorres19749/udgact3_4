import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:english_words/english_words.dart';
import 'screen/card.dart';
import 'screen/mybar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Actividad 3.4',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

   void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
                    
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;
    print (pair.asLowerCase);
    return Scaffold(
      body: Container(
        child: Column (
          crossAxisAlignment : CrossAxisAlignment.stretch,
          children: <Widget> [
          
            MyAppBar(
              title: Text(
                'UDG App Moviles, Act 3.4',
                style: Theme.of(context) //
                    .primaryTextTheme
                    .titleLarge,
              ),
            ),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [


                  MyCard(
                    title: Text("I love Texas", style: TextStyle(color: Colors.white, fontSize: 20.0)), 
                    icon: Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                        size: 40
                        )
                  ),

                  MyCard(
                    title: Text("UDG Apps", style: TextStyle(color: Colors.white, fontSize: 20.0)), 
                    icon: Icon(
                        Icons.add_card,
                        color: Colors.blueAccent,
                        size: 40
                        )
                  ),
                  
                ]
              )
            )
          ] 
        )
      ) 
    );
  }
}

