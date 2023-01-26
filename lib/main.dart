import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(MaterialApp(
    title: 'Navigation',
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      fontFamily: 'Georgia',
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    ),
    initialRoute: '/',
    routes: {
      '/second': (context) => const MyHomePage(title: "title", header: "header"),
      '/': (context) => MySecondPage(),
      '/third': (context) => MyThirdPage(),
    },
  ));
}

class MySecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      title: const Text('shimakura takanao')
    ),
    body: Center(
      child: FloatingActionButton(
        child: const Icon(Icons.next_week),
        onPressed: () {
          Navigator.pushNamed(context, "/third");
        }
      )
    )
  );
}

class MyThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(

      appBar: AppBar(
          title: const Text('pic')
      ),
      body: Center(
          child: Image.asset('images/銀行口座_写真.jpg'),
      )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sample',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Title', header: "Header"),
        /*
        home: Scaffold(
        body: Center(
          child: Text(
            'Flutter Demo Home Page',
            style: Theme.of(context).textTheme.displaySmall
          )
        )
       )
        */
    );
  }
  /*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page test'),
    );
  }
  */
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.header});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final String header;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.header),
        //title: Text(widget.title)
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
              style: Theme.of(context).textTheme.headline4,
            ),
            const Text(
                "Don't push me!"
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/takakano.png')
              ],
            )
          ],
        ),
      ),
      floatingActionButton:
      Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              child: const Icon(Icons.add),
            ),
            SizedBox(height: 8,),
            FloatingActionButton(
              onPressed: _decrementCounter,
              child: const Icon(Icons.abc_sharp),
            ),
          ],
      //Row(
        //children: [
          /*
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.exposure_minus_1),
          ),
           */

        //]
      )
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
       */
        /*// This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: FloatingActionButton1(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.add),
      )
         */
    );
  }
}
