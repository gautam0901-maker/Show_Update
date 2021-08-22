import 'package:flutter/material.dart';
class whatsnew extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("What's new",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();

                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                )
            ),
          ],
        ),
        body: Center(child: Text("Whats's New")),
      ),
    );
  }
}
