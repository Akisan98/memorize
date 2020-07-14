import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Creator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          children: <Widget>[
            Text("Media: Pictrure or Camera"),
            Padding(
              padding: EdgeInsets.all(32),
              child: TextFormField(
                minLines: 1,
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: "What's the Question?"
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(32), child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: "Correct Answer",
                          fillColor: Colors.green,
                        ),
                      ),
                    ),

                    Flexible(
                      child: TextFormField(
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: "A Wrong Answer",
                        ),
                      ),
                    ),

                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: "A Wrong Answer?"
                        ),
                      ),
                    ),

                    Flexible(
                      child: TextFormField(
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: "A Wrong Answer?"
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: RaisedButton(onPressed: null, child: Text("Finished"),)
                  ),
                  Flexible(
                    child: RaisedButton(onPressed: null, child: Text("New Question"),)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}