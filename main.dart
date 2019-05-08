import 'package:flutter/material.dart';

void main() => runApp(new GettingStartedApp());

class GettingStartedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Getting Started Title",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("App Bar Title"),
          ),
          // body: new Center(
          //   child: new Text("Centered Text"),
          // )
          body: new HomeWidget(),
        ));
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 20,
      itemBuilder: (context, rowNumber) {
        return new Container(
            padding: new EdgeInsets.all(16.0),
            child: new Column(
              children: <Widget>[
                new Image.network("https://images.unsplash.com/photo-1557264351-1de591f88634?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"),
                new Container(height: 8.0,),
                new Text("Check back for more Content.",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                new Divider(
                  color: Colors.green,
                )
              ],
            ));
      },
    );
  }
}
