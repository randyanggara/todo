// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:todo/data/model/tasks/task_model.dart' as _i9;
import 'package:todo/screens/add_edit_category/add_edit_category_page.dart'
    as _i1;
import 'package:todo/screens/add_edit_task/add_task/add_task_page.dart' as _i2;
import 'package:todo/screens/add_edit_task/edit_task/edit_task_page.dart'
    as _i5;
import 'package:todo/screens/archieve/archieve_page.dart' as _i3;
import 'package:todo/screens/category/category_page.dart' as _i4;
import 'package:todo/screens/task_list/task_list_page.dart' as _i6;

abstract class $RouteService extends _i7.RootStackRouter {
  $RouteService({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AddCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<AddCategoryRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddCategoryPage(
          key: args.key,
          index: args.index,
          isEdit: args.isEdit,
        ),
      );
    },
    AddTaskRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddTaskPage(),
      );
    },
    ArchieveRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ArchievePage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CategoryPage(),
      );
    },
    EditTaskRoute.name: (routeData) {
      final args = routeData.argsAs<EditTaskRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EditTaskPage(
          key: args.key,
          taskIndex: args.taskIndex,
          model: args.model,
        ),
      );
    },
    TaskListRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.TaskListPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddCategoryPage]
class AddCategoryRoute extends _i7.PageRouteInfo<AddCategoryRouteArgs> {
  AddCategoryRoute({
    _i8.Key? key,
    required int index,
    required bool isEdit,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          AddCategoryRoute.name,
          args: AddCategoryRouteArgs(
            key: key,
            index: index,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'AddCategoryRoute';

  static const _i7.PageInfo<AddCategoryRouteArgs> page =
      _i7.PageInfo<AddCategoryRouteArgs>(name);
}

class AddCategoryRouteArgs {
  const AddCategoryRouteArgs({
    this.key,
    required this.index,
    required this.isEdit,
  });

  final _i8.Key? key;

  final int index;

  final bool isEdit;

  @override
  String toString() {
    return 'AddCategoryRouteArgs{key: $key, index: $index, isEdit: $isEdit}';
  }
}

/// generated route for
/// [_i2.AddTaskPage]
class AddTaskRoute extends _i7.PageRouteInfo<void> {
  const AddTaskRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AddTaskRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTaskRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ArchievePage]
class ArchieveRoute extends _i7.PageRouteInfo<void> {
  const ArchieveRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ArchieveRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArchieveRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoryPage]
class CategoryRoute extends _i7.PageRouteInfo<void> {
  const CategoryRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EditTaskPage]
class EditTaskRoute extends _i7.PageRouteInfo<EditTaskRouteArgs> {
  EditTaskRoute({
    _i8.Key? key,
    required int taskIndex,
    required _i9.TaskModel model,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          EditTaskRoute.name,
          args: EditTaskRouteArgs(
            key: key,
            taskIndex: taskIndex,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'EditTaskRoute';

  static const _i7.PageInfo<EditTaskRouteArgs> page =
      _i7.PageInfo<EditTaskRouteArgs>(name);
}

class EditTaskRouteArgs {
  const EditTaskRouteArgs({
    this.key,
    required this.taskIndex,
    required this.model,
  });

  final _i8.Key? key;

  final int taskIndex;

  final _i9.TaskModel model;

  @override
  String toString() {
    return 'EditTaskRouteArgs{key: $key, taskIndex: $taskIndex, model: $model}';
  }
}

/// generated route for
/// [_i6.TaskListPage]
class TaskListRoute extends _i7.PageRouteInfo<void> {
  const TaskListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TaskListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskListRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
