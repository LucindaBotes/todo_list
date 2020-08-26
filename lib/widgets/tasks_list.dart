import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_list/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {



  @override
  Widget build(
   BuildContext context) {
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
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            boxCall: (boxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            }
          );
        },
        itemCount: widget.tasks.length,
      ),
    );
  }
}
