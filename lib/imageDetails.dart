import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Details",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: Center(
          child:
              Image.network('https://picsum.photos/id/237/200/300', width: 270),
        ));
  }
}
