import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '홈페이지 1',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
<<<<<<< HEAD

  //메뉴
  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                print('클릭');
              },
              child: Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시'),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('블랙'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('바이크'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('대리'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('블랙'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('바이크'),
              ],
            ),
            Opacity(
              opacity: 0.0,
              child: Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('대리'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    final imageItems = [
      'assets/minji1.jpg',
      'assets/minji2.jpg',
      'assets/minji3.jpg',
    ];
    return CarouselSlider(
      options: CarouselOptions(
        height: 500.0
      ),
      items: imageItems.map((path)
      {
        return Builder(
            builder:(BuildContext context) {
              return Container(
                width : MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRect(
                  child: Image.asset(
                      path,
                  ),
                ),
              );
              },
        );
      }
      ).toList(),
    );
  }

  Widget _buildBottom() {
   final items = List.generate(
     10, (i){
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('공지사항입니다.'),
      );
   });
   return ListView(
     physics: NeverScrollableScrollPhysics(),
     shrinkWrap: true,
     children: items,
   );
  }
}
=======
}
>>>>>>> parent of a5c153e (11.16)
