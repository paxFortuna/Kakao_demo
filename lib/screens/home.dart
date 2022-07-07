import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final dummyItems =[
  "kakao_demo/assets/imgs/chat_on.png",
  "kakao_demo/assets/imgs/home_off.png",
  "kakao_demo/assets/imgs/home_on.png",
  "kakao_demo/assets/imgs/location_off.png",
  "kakao_demo/assets/imgs/note_on.png",
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        _buildTop(),
        const SizedBox(
          height: 20,
        ),
        _buildMiddle(),
        const SizedBox(
          height: 20,
        ),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                print("호출");
              },
              child: Column(
                children: const [
                  Icon(Icons.local_taxi, color: Colors.white, size: 40),
                  Text(
                    "택시",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("호출");
              },
              child: Column(
                children: const [
                  Icon(Icons.local_taxi, color: Colors.white, size: 40),
                  Text(
                    "대리",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("호출");
              },
              child: Column(
                children: const [
                  Icon(Icons.local_taxi, color: Colors.white, size: 40),
                  Text("모범", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                print("호출");
              },
              child: Column(
                children: const [
                  Icon(Icons.local_taxi, color: Colors.white, size: 40),
                  Text("블랙", style: TextStyle(color: Colors.white)),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                Icon(Icons.local_taxi, color: Colors.white, size: 40),
                Text(
                  "승합",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.local_taxi, color: Colors.white, size: 40),
                Text(
                  "미니",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.local_taxi, color: Colors.white, size: 40),
                Text("우버", style: TextStyle(color: Colors.white)),
              ],
            ),
            Opacity(
              opacity: 0.0,
              child: Column(
                children: const [
                  Icon(Icons.local_taxi, color: Colors.white, size: 40),
                  Text("택시", style: TextStyle(color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

Widget _buildMiddle() {
  return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16/9,
        autoPlay: false,
      ),
    items: dummyItems.map((img){
      return Builder(builder: (BuildContext context){
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          child: ClipRect(
              child: Image.asset(
                img,
                fit: BoxFit.fill,
             ),
           ),
        );
        },
      );
    }).toList(),
  );
}

Widget _buildBottom() {
    final items = List.generate(10, (i) => const ListTile(
      leading: Icon(Icons.notifications_none),
      title: Text("[이벤트] 이것은 공지사항입니다."),
    ),
    );
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        children: items,
    );
  }
}
