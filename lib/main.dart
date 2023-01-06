import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePageBody(),
    );
  }
}

class HomePageBody extends StatelessWidget {
  Expanded singleLineElment({Color? colorName, int? soundNumber}) {
    return Expanded(
      child: Container(
        color: colorName,
        height: 70,
        child: TextButton(
          onPressed: () {},
          child: Text('Voice ${soundNumber}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text(
          'Xylophone App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.cyan[700],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              singleLineElment(colorName: Colors.amber, soundNumber: 1),
              singleLineElment(colorName: Colors.red, soundNumber: 2),
              singleLineElment(colorName: Colors.green, soundNumber: 3),
              singleLineElment(colorName: Colors.indigo, soundNumber: 4),
              singleLineElment(colorName: Colors.blueGrey, soundNumber: 5),
              singleLineElment(colorName: Colors.pink, soundNumber: 6),
              singleLineElment(colorName: Colors.brown, soundNumber: 7),
             
              
              
            ],
          ),
        ),
      ),
    );
  }
}
