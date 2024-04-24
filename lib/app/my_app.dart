import 'package:flutter/material.dart';
import 'package:portafolio_web/config/config.dart';
import 'package:portafolio_web/screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
    home: const HomeScreen(),
    );
  }
}
