import 'package:flutter/material.dart';

class IconTest extends StatefulWidget {
  const IconTest({super.key});

  @override
  State<IconTest> createState() => _IconTestState();
}

class _IconTestState extends State<IconTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonTest'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Icon(
        Icons.home,
          size: 70.0,
          color: Colors.red,
      ),
    );
  }
}
