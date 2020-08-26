import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 70.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xfffccdef),
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                  autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton(
                child: Text('Add'),
                color: Color(0xfffccdef),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
