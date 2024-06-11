import 'package:flutter/material.dart';
import 'package:todo/services/common/default_category_provider.dart';
import 'package:todo/data/database/local_storage_initializer.dart';
import 'package:todo/services/locator_service.dart';
import 'package:todo/services/route_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageInitializer.registerAdapters();
  await LocalStorageInitializer.openAllBoxes();
  initDependencies();

  await DefaultCategoryProvider.fillDefaultCategory();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = RouteService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      title: 'ToDo',
      theme: classicTheme,
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
