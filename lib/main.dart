import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //you can use shorcut stl then choose stateless widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Practice"), //title for the project
        ),
        body: Container(
          color: Colors.red, //if you put container and color after that, its gonna fill the body background using color
          margin: EdgeInsets.fromLTRB(10, 15, 10,25), //after that if you use margin Edgeinsets its gonna make edge on the container and fore the format is left. top, right, bottom you can use .all too
          padding: EdgeInsets.only(
              bottom: 40,
              top:20), //you make container inside again so its doesnt overlap the margin edge its the same if you make margin inside the child try open this and close margin below the child. if you use .only then its gonna make padding only for what you choose
          child: Container(
            color:Colors.blue, //using blue on the inside od the margin container
            margin: EdgeInsets.all(10), // try closing this and open padding below margin on top, but if you open both its gonna make 20 for the EdgeInsets
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), //you can use boxdecoration . border radius use to make a circular padding
                  gradient: LinearGradient(
                      begin: Alignment.topLeft, //the start of the gradient
                      end: Alignment.bottomRight, //end of the gradient
                      colors: <Color>[ //using array to input 2 color
                        Colors.amber, //start of the gradient color
                        Colors.blue, //second gradient color
                      ])),
              margin: EdgeInsets.all(20),
            ),
          ),
        ),
      ),
    );
  }
}
