import 'package:flutter/material.dart';

import 'creator.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          centerTitle: true,
          title: Text("Memorize"),
          backgroundColor: Colors.blueGrey,
        ),*/
        body: MenuScreen(),
      ),
    ),
  );
}


class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      // Same Width for the Buttons
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Container(
                margin: EdgeInsets.all(16),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Creator()),);
                  },
                  
                  child: Text('Create', textScaleFactor: 1.6),
                  padding: EdgeInsets.fromLTRB(48, 16, 48, 16),
                ),
              ),

              Container(
                margin: EdgeInsets.all(16),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Memorize', textScaleFactor: 1.6),
                  padding: EdgeInsets.fromLTRB(48, 16, 48, 16),
                ),
              ),
            ],
          ),    
        ),
      ),
    );
  }
}