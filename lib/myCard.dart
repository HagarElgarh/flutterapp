import 'package:flutter/material.dart';
import 'package:mypp/imageDetails.dart';

class MyCard extends StatefulWidget {
  String imgLink = 'https://via.placeholder.com/150';
  String text;
  MyCard({this.imgLink, this.text});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  List<String> imgs = [
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150"
  ];
  @override
  Widget build(BuildContext context) {
    // return
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cards",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: Center(
          child: Card(
            child: Container(
              width: 300,
              height: 500,

              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 80.0)),
                      Image(
                        image: AssetImage('assets/flutter.jpg'),
                        width: 50,
                      ),
                      Text(
                        "Introducing g Flutter",
                        style: TextStyle(color: Colors.grey, fontSize: 27),
                      )
                    ],
                  ),

                  // Stack(children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    ),
                    child: Container(
                      color: Colors.blue,
                      padding: EdgeInsets.all(10.0),
                      child:
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            // child: Container(
                            //   width: 100.0,
                            //   foregroundDecoration: new BoxDecoration(
                            //       color: Color.fromRGBO(155, 85, 250, 0.0)),
                            //   height: 240.0,
                            //   child: Image.network(
                            //       'https://picsum.photos/id/237/200/300',
                            //       width: 70),
                            // ),
                            Image.network(
                                'https://picsum.photos/id/237/200/300',
                                width: 70),
                            Image.network(
                                'https://picsum.photos/id/217/200/300',
                                width: 70),
                            Image.network(
                                'https://picsum.photos/id/227/200/300',
                                width: 70),
                            Image.network(
                                'https://picsum.photos/id/220/200/300',
                                width: 70),
                            // ])
                          ]),
                    ),
                  ),

                  // Image(image: AssetImage('assets/aot.jpg'),
                  // Image.network(widget.imgLink),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 80.0)),
                      Icon(
                        Icons.thumb_up,
                        color: Colors.black,
                        size: 24.0,
                        // semanticLabel: 'Text to announce in accessibility modes',
                      ),
                      Padding(padding: const EdgeInsets.only(left: 10.0)),
                      Text(
                        "Like",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Padding(padding: const EdgeInsets.only(left: 40.0)),
                      Icon(
                        Icons.comment,
                        color: Colors.black,
                        size: 24.0,

                        // semanticLabel: 'Text to announce in accessibility modes',
                      ),
                      Padding(padding: const EdgeInsets.only(left: 10.0)),
                      Text(
                        "Comments",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
              // ),
            ),
            // ),
          ),
        ));
  }
}
