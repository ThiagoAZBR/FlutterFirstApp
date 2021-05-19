import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listaWords = [
    'Um - One',
    'Dois - Two',
    'Três - Three',
    'Quatro - Four',
    'Cinco - Five',
    'Seis - Six',
    'Sete - Seven',
    'Oito - Eight',
    'Nove - Nine'
  ];
  List<String> listaSpecial = [
    'You so',
    "Fuckin'",
    'Precious',
    'When You',
    'Smile',
    ':)',
    'Girl, I',
    'Lose My',
    'Selfup',
    'in those',
    'eyes-eyes-eyes',
    '💖'
  ];
  List<String> listaNumbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  String choice = 'Click Me';
  int count = 0;
  int isOrNot = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SwitchSwitch'),
        ),
        endDrawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 10),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    choice = 'Click Me';
                    count = 0;
                    isOrNot = 0;
                  });
                },
                child: Text(
                  'Text',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                height: 2,
                color: Colors.blue,
                margin: EdgeInsets.only(top: 10, bottom: 10),
              ),
              TextButton(
                //Clicking Here will make change to count numbers
                onPressed: () {
                  setState(() {
                    choice = 'Click Me';
                    count = 0;
                    isOrNot = 1;
                  });
                },
                child: Text(
                  'Number',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                height: 2,
                color: Colors.blue,
                margin: EdgeInsets.only(top: 10, bottom: 10),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      choice = 'Click me';
                      count = 0;
                      isOrNot = 2;
                    });
                  },
                  child: Text('Special',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black87,
                          fontWeight: FontWeight.normal))),
              Container(
                height: 2,
                color: Colors.blue,
                margin: EdgeInsets.only(top: 10, bottom: 10),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 9,
                          blurRadius: 5)
                    ]),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (isOrNot == 1) {
                        choice = listaNumbers[count];
                      } else if (isOrNot == 0) {
                        choice = listaWords[count];
                      } else if (isOrNot == 2) {
                        choice = listaSpecial[count];
                      }
                      count = count + 1;

                      if (isOrNot == 0) {
                        if (count >= listaWords.length) {
                          count = 0;
                        }
                      } else if (isOrNot == 1) {
                        if (count >= listaNumbers.length) {
                          count = 0;
                        }
                      } else if (isOrNot == 2) {
                        if (count >= listaSpecial.length) {
                          count = 0;
                        }
                      }
                    });
                  },
                  child: Text(
                    choice,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
