import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Test'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Do Everything Bar'),
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                  });                  
                },
                child: Text('Click Me!'),
              )),
          Column(
            children: _products
                .map((elem) => Card(
                        child: Column(
                      children: <Widget>[
                        Image.asset('assets/food.jpg'),
                        Text(elem)
                      ],
                    )))
                .toList(),
          ),
        ],
      ),
    ));
  }
}
