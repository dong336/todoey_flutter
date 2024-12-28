import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> toggleCheckboxState;

  const TaskCheckBox({
    super.key,
    required this.isChecked,
    required this.toggleCheckboxState,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: toggleCheckboxState,
    );
  }
}
