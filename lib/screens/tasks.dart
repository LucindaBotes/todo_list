import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffccdef),
      floatingActionButton: FloatingActionButton(
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
                  'Todoey',
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TaskList(),
          )
        ],
      ),
    );
  }
}

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: <Widget>[
          TaskTile()
        ],
      ),
      height: 300.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          )),
    );
  }
}

class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Tasks come here'),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
