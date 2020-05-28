import 'package:flutter/material.dart';
import 'package:heroexample/second_page.dart';

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          'First Page Hero',
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
                'The Hero widget is the next',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 400,
              ),
              Hero(
                tag: 'myhero',
                child: Image.asset(
                  'images/flutter bird.png',
                  width: 70.0,
                  height: 70.0,
                ),
              ),
              RaisedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return SecondPage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
