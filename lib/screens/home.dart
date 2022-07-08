import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kakao_demo/components/car_data.dart';

final dummyItems =[
  "assets/images/ta_01.png",
  "assets/images/ta_02.png",
  "assets/images/ta_03.png",
  "assets/images/location_off.png",
  "assets/images/note_on.png",
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 10,
          color: Colors.black26,
        ),
        _buildTop(),
        Container(
          height: 10,
          color: Colors.black26,
        ),
         _buildMiddle(),
        Container(
          height: 10,
          color: Colors.black26,
        ),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  print("호출");
                },
                child: const CarData(name: '일반'),
              ),
              GestureDetector(
                onTap: () {
                  print("호출");
                },
                child: const CarData(name: '럭셔리'),
              ),
              GestureDetector(
                onTap: () {
                  print("호출");
                },
                child: const CarData(name: '뉴욕'),
              ),
              GestureDetector(
                onTap: () {
                  print("호출");
                },
                child: const CarData(name: '부산'),
              ),
      ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CarData(name: '도쿄'),
              CarData(name: '서울'),
              CarData(name: '시골'),
              Opacity(
                opacity: 0.0,
                child: CarData(name: '모범'),
              )
            ],
          ),
        ],
      ),
    );
  }

Widget _buildMiddle() {
  return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: false,
      ),
    items: dummyItems.map((i){
      return Builder(builder: (BuildContext context){
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          child: ClipRect(
              child: Image(
                image: AssetImage(i),
                fit: BoxFit.cover,
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
      padding: const EdgeInsets.all(20),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        children: items,
    );
  }
}
