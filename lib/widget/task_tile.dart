import 'package:flutter/material.dart';
import 'package:todoey_flutter/widget/task_check_box.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        toggleCheckboxState: (value) {
          setState(() {
            isChecked = value ?? false;
          });
        },
      ),
    );
  }
}
