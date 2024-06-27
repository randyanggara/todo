import 'package:flutter/material.dart';

class ScheduleTopWidget extends StatelessWidget {
  const ScheduleTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        const Text(
          'Schredule',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const SizedBox(),
      ],
    );
  }
}
