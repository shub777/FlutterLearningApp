import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Shub Flutter",
      home: new MyCurrentHomePage(),
      theme: new ThemeData(
          accentColor: Colors.redAccent,
          primarySwatch: Colors.green,
          brightness: Brightness.dark),
    );
  }
}

class MyCurrentHomePage extends StatefulWidget {
  @override
  _MyCurrentHomePageState createState() => _MyCurrentHomePageState();
}

class _MyCurrentHomePageState extends State<MyCurrentHomePage> {
  String myText = "Hello World";

  void _changeText() {
    setState(() {
      if (myText.startsWith("H"))
        myText = "My World";
      else
        myText = "Hello World";
    });
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              myText,
              style: new TextStyle(
                fontSize: 22.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(child: new Text("Home Page")),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add), onPressed: _changeText),
    );
  }
}
