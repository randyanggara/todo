import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/category/controller/category_list_controller.dart';
import 'package:todo/services/route_service/route_service.gr.dart';

class PopupButtonsWidget extends StatelessWidget {
  final CategoryListController categoryController;
  final int index;

  const PopupButtonsWidget({
    super.key,
    required this.index,
    required this.categoryController,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (int value) async {
          switch (value) {
            case 0:
              await AutoRouter.of(context).push(
                AddCategoryRoute(index: index, isEdit: true),
              );
              break;
            case 1:
              await categoryController.removeCategory(index: index);
              break;
          }
        },
        child: const Icon(
          Icons.more_horiz,
          color: Colors.black54,
          size: 35,
        ),
        itemBuilder: (_) => [
              const PopupMenuItem(
                value: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.edit),
                    Text("Edit"),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    Text("Remove"),
                  ],
                ),
              ),
            ]);
  }
}
