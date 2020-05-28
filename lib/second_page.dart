import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          'Second Page Hero',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(
            top: 30.0,
          ),
          child: Column(
            children: <Widget>[
              Text(
                'The Hero widget moved to this page is the next',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Hero(
                tag: 'myhero',
                child: Image.asset('images/flutter bird.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
