import 'package:flutter/material.dart';
import 'package:todo/services/common/default_category_provider.dart';
import 'package:todo/data/database/local_storag_initializer.dart';
import 'package:todo/screens/task_list/task_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageInitializer.registerAdapters();
  await LocalStorageInitializer.openAllBoxes();
  await DefaultCategoryProvider.fillDefaultCategory();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo',
      theme: classicTheme,
      home: const TaskListPage(),
    );
  }
}

final classicTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Ubuntu',
  primarySwatch: Colors.deepPurple,
  scaffoldBackgroundColor: Colors.white,
);

final darkTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.dark,
  fontFamily: 'Ubuntu',
  primarySwatch: Colors.deepPurple,
  scaffoldBackgroundColor: Colors.black,
);
