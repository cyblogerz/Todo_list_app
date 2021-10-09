import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkboxCallback(bool? checkBoxState) {
    setState(() {
      if (checkBoxState != null) {
        isChecked = checkBoxState;
      } else {
        isChecked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Complete Todey app',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked, toggleCheckBoxState: checkboxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckBoxState;

  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckBoxState,
    );
  }
}
