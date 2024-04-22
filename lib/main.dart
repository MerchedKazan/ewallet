import 'package:ewalle/features/authentications/presentation/get_started_screen.dart';
import 'package:ewalle/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eWalle',
      theme: lightTheme,
      home: GetStarted(),
    );
  }
}

