import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallback,
        // onChanged: toggleCheckBoxState,
      ),
    );
  }
}
