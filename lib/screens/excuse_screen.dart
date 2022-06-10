import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/excuse_model.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:flutter_application_1/widgets/Excuse_Widget.dart';

class ExcuseScreen extends StatefulWidget {
  const ExcuseScreen({Key? key}) : super(key: key);
  @override
  State<ExcuseScreen> createState() => _ExcuseScreenState();
}

class _ExcuseScreenState extends State<ExcuseScreen> {
  Excuse? excuse1;
  @override
  void initState() {
    super.initState();
    getExc();
  }
  void getExc () async {
    excuse1 = await ApiService().getRandomExcuse();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("General excuse"),
      ),
      body: bodyMethod()
    );
  }

  Widget bodyMethod() {
    return ExcuseWidget(excuse1: excuse1, onTap: getExc);
  }
}