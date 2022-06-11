import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/children_excuse_screen.dart';
import 'package:flutter_application_1/screens/college_excuse_screen.dart';
import 'package:flutter_application_1/screens/excuse_screen.dart';
import 'package:flutter_application_1/screens/fam_excuse_screen.dart';
import 'package:flutter_application_1/screens/office_excuse_screen.dart';
import 'package:flutter_application_1/screens/party_excuse_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedI = 0;
  List<Widget> pages = [
    ExcuseScreen(),
    FamExcuseScreen(),
    officeExcuseScreen(),
    childrenExcuseScreen(),
    collegeExcuseScreen(),
    partyExcuseScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Excuse Genesis',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(centerTitle: true)),
      home: Scaffold(
        body: pages[selectedI],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedI,
          backgroundColor: Colors.amber.shade100,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          onTap: (index) {
            selectedI = index;
            print(selectedI);
            setState(() {
              
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.self_improvement), label: "General"),
            BottomNavigationBarItem(icon: Icon(Icons.family_restroom), label: "Family"),
            BottomNavigationBarItem(icon: Icon(Icons.work_rounded), label: "Office"),
            BottomNavigationBarItem(icon: Icon(Icons.child_care), label: "Children"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "College"),
            BottomNavigationBarItem(icon: Icon(Icons.celebration), label: "Party"),
          ]
        ),
      ),      
    );
  }
}