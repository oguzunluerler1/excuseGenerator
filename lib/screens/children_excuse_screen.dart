import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/excuse_model.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/widgets/Excuse_Widget.dart';

class childrenExcuseScreen extends StatefulWidget {
  const childrenExcuseScreen({Key? key}) : super(key: key);
  @override
  State<childrenExcuseScreen> createState() => _childrenExcuseScreen();
}

class _childrenExcuseScreen extends State<childrenExcuseScreen> {
  Excuse? excuse1;
  @override
  void initState() {
    super.initState();
    getExc();
  }
  void getExc () async {
    excuse1 = await ApiService().getChildrenExcuse();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Children excuse"),
      ),
      body: bodyMethod()
    );
  }

  Widget bodyMethod() {
    return ExcuseWidget(excuse1: excuse1, onTap: getExc,);
  }
}