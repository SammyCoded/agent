import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              launch('tel: ');
            },
            child: const Text("Make A call"),
          ),
          ElevatedButton(
            onPressed: () {
              launch("sms: ? body=   ");
            },
            child: const Text("Send A SMS"),
          ),
          ElevatedButton(
            onPressed: () {
              launch('https: ');
            },
            child: const Text("Open A URl"),
          ),
          ElevatedButton(
            onPressed: () {
              launch(
                  "mailto: ? subject= ");
            },
            child: const Text("Make A Email"),
          ),
        ]),
      ),
    );
  }
}
