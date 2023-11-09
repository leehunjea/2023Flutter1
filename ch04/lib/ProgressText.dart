import 'package:flutter/material.dart';

class ProgressText extends StatefulWidget {
  const ProgressText({super.key});

  @override
  State<ProgressText> createState() => _ProgressTextState();
}

class _ProgressTextState extends State<ProgressText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('ButtonTest'),
    backgroundColor: Colors.deepPurple,
    ),
    body: Column(
    children:[ CircularProgressIndicator(),
              LinearProgressIndicator()
    ],
    ),
    );
  }
}