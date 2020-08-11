import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Hello World'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String message = 'Hello World !!!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),

            //Creating a button
            RaisedButton(
                child: Text("New message"),
                onPressed: () {
                  //change the state parameters
                  message = "New Message upon button click";
                  //refresh the layout once you have changed the parameters
                  setState(() {});
                }),

            //Another way of creating a button
            RaisedButton.icon(
                label: Text("Reset"),
                //tons of icons available in material theme
                icon: Icon(Icons.clear),
                onPressed: () {
                  //change the state parameters
                  message = "Hello World !!!";
                  //refresh the layout once you have changed the parameters
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
