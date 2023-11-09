import 'package:ch4/ImageTest.dart';
import 'package:flutter/material.dart';
import 'BottomNavigationTest.dart';
import 'ButtonTest.dart';
import 'CenterTest.dart';
import 'ContainerTest.dart';
import 'StackTest.dart';
import 'PageViewUI.dart';
import 'PuzzleUI.dart';
import 'TapBarTest.dart';
import 'TextTest.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const ContainerTest(),
      home: const ImageTest(),
    );
  }
}

