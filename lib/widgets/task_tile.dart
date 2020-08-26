import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function boxCall;

  TaskTile({this.isChecked, this.taskTitle, this.boxCall});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Color(0xfffccdef),
        value: isChecked,
        onChanged: boxCall,
      )
    );
  }
}






