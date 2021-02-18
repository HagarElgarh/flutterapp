import 'package:flutter/material.dart';

import 'myCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Sign in';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(appTitle)),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCard()),
                );
              },
              padding: EdgeInsets.all(10.0),
              color: Color.fromRGBO(0, 160, 227, 1),
              textColor: Colors.white,
              child: Text("Sign in", style: TextStyle(fontSize: 15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Center(
              child: Text(
                'Need an account?Register',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height / 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: Text(
                'Forget password',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height / 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
