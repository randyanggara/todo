import 'package:flutter/material.dart';

class DismissStyleWidget extends StatelessWidget {
  const DismissStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.delete,
            color: Colors.white,
          ),
          Text(
            "Remove",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
