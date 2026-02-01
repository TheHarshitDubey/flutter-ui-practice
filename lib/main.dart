import 'package:flutter/material.dart';

// import 'package:flutter_widget/MyHomePage.dart';
// import 'package:flutter_widget/product_card_ui.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_widget/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: const MyHomePage(),
      // home: const MyWidget(),
      home: const SettingsScreen(),

    );
  }
}

