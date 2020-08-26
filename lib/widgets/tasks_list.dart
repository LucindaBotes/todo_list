import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_list/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Feed dogs'),
    Task(name: 'Make messaging app'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 300.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          )),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
          );
        },
        itemCount: tasks.length,
      ),
    );
  }
}
