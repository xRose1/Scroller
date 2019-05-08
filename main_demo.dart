import 'package:flutter/material.dart';

// void main() => runApp(new MyApp());

void main() => runApp(new GettingStartedApp());

class GettingStartedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Getting Started", home: new Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Getting Started App Bar Title"),
        ),
        body: new HomeList());
  }
}

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 20,
      itemBuilder: (context, i) {
        return new Column(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(16.0),
              child: new Column(
                children: <Widget>[
                  new Image.network(
                      "https://goo.gl/vFdXGc"),
                  new Container(height: 12.0,),
                  new Text("Instagram Firebase Course - Check it out in description below!",
                    style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            new Divider(),
          ],
        );
      },
    );
  }
}
