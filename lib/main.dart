import 'package:flutter/material.dart';
import 'package:orange_money/ui/router/router_app.dart';
import 'package:orange_money/ui/theme/theme_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OrangeMoney',
      theme: themeApp(),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
