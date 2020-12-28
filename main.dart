import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AndreaApp());
}

class AndreaApp extends StatefulWidget {
  @override
  _AndreaAppState createState() => _AndreaAppState();
}

class _AndreaAppState extends State<AndreaApp> {
  //list of items
  final listOfItems = [];
  //add a clock to list
  addClock() {
    listOfItems.add(Clock());
    setState(() {});
    print('pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'setState',
              style: TextStyle(fontSize: 20.5, color: Colors.black),
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addClock();
          },
          child: Text(
            '+',
            style: TextStyle(color: Colors.black, fontSize: 15.5),
          ),
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
          itemCount: listOfItems.length,
          itemBuilder: (context, index) {
            return Clock();
          },
        ),
      ),
    );
  }
}

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  int count = 0;
//adding a numbers
  addingNumber() {
    count++;
    setState(() {});
  }
//reducing a numbers
  deleteNumber() {
    count--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Text(
              count.toString(),
              style: TextStyle(fontSize: 50.5),
            ),
          ),
          SizedBox(
            width: 170.5,
          ),
          Padding(
            padding: const EdgeInsets.only(right:15.0),
            child: FloatingActionButton(
              child: Text(
                '-',
                style: TextStyle(color: Colors.black, fontSize: 35.5),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                deleteNumber();
              },
              backgroundColor: Colors.orange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:15.0),
            child: FloatingActionButton(
              child: Text(
                '+',
                style: TextStyle(color: Colors.black, fontSize: 35.5),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                addingNumber();
              },
              backgroundColor: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
