import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class ListViewHorizontal extends StatefulWidget {
    @override 
    State<StatefulWidget> createState() {
        return new ListViewHorizontalState();
    }
}

class ListViewHorizontalState extends State<ListViewHorizontal> {
    @override 
    Widget build(BuildContext buildContext) {
        final screenSize = MediaQuery.of(context).size;
        return new Scaffold(
            appBar: new AppBar(
                title: new Text('ListView Horizontal'),
            ),
            body: new Container(
                child: new ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: <Widget>[
                        new Container(
                            color: Colors.red,
                            width: screenSize.width,
                            height: screenSize.height,
                            child: new Center(
                                child: new Text(
                                    'RED',
                                    style: new TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.white
                                    ),
                                ),
                            ),
                        ),
                        new Container(
                            color: Colors.blue,
                            width: screenSize.width,
                            height: screenSize.height,
                            child: new Center(
                                child: new Text(
                                    'BLUE',
                                    style: new TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.white
                                    ),
                                ),
                            ),
                        ),
                        new Container(
                            color: Colors.orange,
                            width: screenSize.width,
                            height: screenSize.height,
                            child: new Center(
                                child: new Text(
                                    'ORANGE',
                                    style: new TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.white
                                    ),
                                ),
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

class MyApp extends StatelessWidget {
    @override 
    Widget build(BuildContext buildContext) {
        return new MaterialApp(
            title: 'My App',
            home: new ListViewHorizontal()
        );
    }
}