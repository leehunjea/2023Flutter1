import 'package:flutter/material.dart';

class EventTest extends StatefulWidget {
  const EventTest({super.key});

  @override
  State<EventTest> createState() => _EventTestState();
}

class _EventTestState extends State<EventTest> {
  String eventMessage = '초기값'; //String? 초기화 하는 방법
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Test'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$eventMessage'),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  eventMessage = 'Gesture Detector 클릭';
                });
              },
              child: Text('클릭 me'),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  eventMessage = 'InkWell 클릭';
                });
              },
              child: Text('InkWell 클릭'
              ),
            )
          ],
        ),
      ),
    );
  }
}
