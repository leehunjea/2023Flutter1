import 'package:flutter/material.dart';

class ImageTest extends StatefulWidget {
  const ImageTest({super.key});

  @override
  State<ImageTest> createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ImageTest'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Image.network('http://bit.ly/2Pvz4t8')


    );
  }

}
