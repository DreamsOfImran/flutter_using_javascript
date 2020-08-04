@JS('notyf')
library main;

import 'package:flutter/material.dart';
import 'package:js/js.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter using JavaScript',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo using JavaScript'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

@JS('success')
external void success(dynamic str);
external void error(dynamic str);

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: myController,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your text!',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    child: Text('Notify me!'),
                    onPressed: () => {success(myController.text)},
                    color: Colors.greenAccent,
                  ),
                  RaisedButton(
                    child: Text('Notify me!'),
                    onPressed: () => {error(myController.text)},
                    color: Colors.redAccent,
                  ),
                  RaisedButton(
                    child: Text('Clear Text'),
                    onPressed: () => {myController.text = ''},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
