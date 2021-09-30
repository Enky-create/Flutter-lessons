import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[300],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Counter App",
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tap \"+\" to increment",
                style: TextStyle(color: Colors.white),
              ),
              Counter(),
              Text(
                "Tap \"-\" to decrement",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counterValue = 0;
  @override
  void initState() {
    _counterValue = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueGrey,
          width: 3,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  _counterValue++;
                });
              },
              icon: Icon(Icons.add)),
          Text(
            "$_counterValue",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  _counterValue--;
                });
              },
              icon: Icon(Icons.remove)),
        ],
      ),
    );
  }
}
