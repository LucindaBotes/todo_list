import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/widgets/tasks_list.dart';
import 'package:todo_list/screens/add_task.dart';
import 'package:todo_list/models/task.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Feed dogs'),
    Task(name: 'Make messaging app'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffccdef),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTask((newTextTitle) {
                          setState(() {
                            tasks.add(Task(name: newTextTitle));
                          });
                          Navigator.pop(context);
                        })),
                  ));
        },
        backgroundColor: Color(0xfffccdef),
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 40.0,
                    color: Color(0xfffccdef),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Todo',
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TaskList(tasks),
          )
        ],
      ),
    );
  }
}
