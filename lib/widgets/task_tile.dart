import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCall(bool boxState) {
    setState(() {
      isChecked = boxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Tasks come here',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TextCheckbox(isChecked, checkboxCall),
    );
  }
}

class TextCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleBoxState;

  TextCheckbox(this.checkboxState, this.toggleBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Color(0xfffccdef),
      value: checkboxState,
      onChanged: toggleBoxState,
    );
  }
}
