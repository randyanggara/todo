import 'package:flutter/material.dart';

class TaskListDialogButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressCallback;
  const TaskListDialogButton({
    super.key,
    required this.icon,
    required this.onPressCallback,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: Text(text),
      icon: Icon(icon),
      onPressed: onPressCallback,
    );
  }
}
