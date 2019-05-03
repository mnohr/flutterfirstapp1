import 'package:flutter/material.dart';

void main() => runApp(MeroApp());

class MeroApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MeroAppState();
  }
}

class _MeroAppState extends State<MeroApp> {
  List<String> _products = ['food tester'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                     _products.add('Advanced Food Tester'); 
                    });
                  },
                  child: Text('ADD PRODUCT'),
                ),
              ),
              Column(
                children: _products.map((element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/food.jpg'),
                          Text(element)
                        ],
                      ),
                    ),).toList(),
              ),
            ],
          )),
    );
  }
}
