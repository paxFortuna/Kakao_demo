import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kakao_demo/components/car_data.dart';
import 'package:kakao_demo/screens/service.dart';

final dummyItems = [
  "assets/images/home_off.png",
  "assets/images/note_on.png",
  "assets/images/wheel.png",
  "assets/images/location_off.png",
  "assets/images/note_on.png",
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 100,
            centerTitle: true,
            backgroundColor: Colors.redAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Kakao_T_demo'),
            ),
          ),
          SliverFillRemaining(
            child: ListView(
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTop() {
    return Builder(
      builder: (BuildContext navContext) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        navContext,
                        MaterialPageRoute(
                            builder: (context) => const ServiceScreen()),
                      );
                    },
                    child: const CarData(name: '??????'),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("??????");
                    },
                    child: const CarData(name: '?????????'),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("??????");
                    },
                    child: const CarData(name: '??????'),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("??????");
                    },
                    child: const CarData(name: '??????'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CarData(name: '??????'),
                  CarData(name: '??????'),
                  CarData(name: '??????'),
                  Opacity(
                    opacity: 0.0,
                    child: CarData(name: '??????'),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
      ),
      items: dummyItems.map((img) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: Colors.purpleAccent,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.8,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
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
    final items = List.generate(
      10,
          (i) =>
      const ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text("[?????????] ???????????? ???????????? ???????????????."),
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
