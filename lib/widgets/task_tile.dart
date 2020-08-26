import 'package:flutter/material.dart';
import 'package:todo_list/screens/tasks.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function boxCall;
  final Function delete;

  TaskTile({this.isChecked, this.taskTitle, this.boxCall, this.delete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: delete(),
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
        ));
  }
}
