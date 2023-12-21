import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/pages/lang_selectionpage.dart';
// Assume you save the interactive gesture example code in my_home_page.dart
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return const MaterialApp(
      home: LangSelectionPage(),
    );
  }
}
