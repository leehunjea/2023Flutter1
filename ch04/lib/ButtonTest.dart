import 'package:flutter/material.dart';

class ButtonTest extends StatefulWidget {
  const ButtonTest({super.key});

  @override
  State<ButtonTest> createState() => _ButtonTestState();
}

class _ButtonTestState extends State<ButtonTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonTest'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.add),
          iconSize: 200,
          onPressed: (){
            setState(() {

            });
          },
        ),
      ),
    );
  }

}
