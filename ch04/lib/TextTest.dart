import 'package:flutter/material.dart';

class TextTest extends StatefulWidget {
  const TextTest({super.key});

  @override
  State<TextTest> createState() => _TextTestState();
}

class _TextTestState extends State<TextTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text('TextTest'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Text(
            'Hello World',
            style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic
            ),

        ),

    );
  }
}
