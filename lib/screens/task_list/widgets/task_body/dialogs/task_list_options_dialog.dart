import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:todo/screens/task_list/controller/task_list_controller.dart';
import 'package:todo/screens/task_list/widgets/task_body/dialogs/dialog_button.dart';
import 'package:todo/services/route_service/route_service.gr.dart';

class TaskListOptionsDialog {
  static Future<void> showOptionsDialog({
    required BuildContext buildContext,
    required TaskListController taskListController,
  }) async =>
      await showDialog(
        barrierColor: Colors.black54,
        context: buildContext,
        builder: (context) {
          return PlatformAlertDialog(
            title: const Text('Chose option'),
            actions: [
              TaskListDialogButton(
                  icon: Icons.add_task_outlined,
                  text: 'Add task',
                  onPressCallback: () async {
                    Navigator.pop(context);
                    taskListController.isNotEmptyCategory(context)
                        ? await AutoRouter.of(context)
                            .push(const AddTaskRoute())
                        : null;
                  }),
              TaskListDialogButton(
                  icon: Icons.post_add_outlined,
                  text: 'Add category',
                  onPressCallback: () async {
                    Navigator.pop(context);
                    await AutoRouter.of(context).push(
                      AddCategoryRoute(index: 0, isEdit: false),
                    );
                  })
            ],
          );
        },
      );
}
