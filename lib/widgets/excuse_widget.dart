import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/excuse_model.dart';

class ExcuseWidget extends StatelessWidget {
  ExcuseWidget({
    Key? key,
    required this.excuse1, required this.onTap,
  }) : super(key: key);

  final Excuse? excuse1;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return excuse1==null? 
    Center(
      child: CircularProgressIndicator.adaptive(),
    ) 
    :Column(
      children: [
        Card(
          child: ListTile(
            title: Text("${excuse1?.excuse ?? "excuse could not be found"}"),
            subtitle: Text("${excuse1?.category ?? "category could not be found"}"),
            trailing: Text("Excuse id : ${excuse1?.id ?? "id not existent"}", style: TextStyle(backgroundColor: Colors.amber.shade100),),
          ),
        ),
        ElevatedButton.icon(onPressed: (){
          onTap();
        }, icon: Icon(Icons.refresh), label: Text("Another excuse"))
      ],
    );
  }
}