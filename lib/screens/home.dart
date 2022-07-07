import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        _buildTop(),
        // _buildMiddle(),
        // _buildBottom(),
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
              onTap: (){
                print("호출");
              },
              child: Column(
                children: const [
                  Icon(Icons.local_taxi, color: Colors.white, size: 40),
                  Text("택시", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            Column(
              children: const [
                Icon(Icons.local_taxi, color: Colors.white, size: 40),
                Text("대리", style: TextStyle(color: Colors.white),),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.local_taxi, color: Colors.white,size: 40),
                Text("모범",style: TextStyle(color: Colors.white)),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.local_taxi, color: Colors.white,size: 40),
                Text("블랙",style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                Icon(Icons.local_taxi, color: Colors.white, size: 40),
                Text("승합", style: TextStyle(color: Colors.white),),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.local_taxi, color: Colors.white, size: 40),
                Text("미니", style: TextStyle(color: Colors.white),),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.local_taxi, color: Colors.white,size: 40),
                Text("우버",style: TextStyle(color: Colors.white)),
              ],
            ),
            Opacity(
              opacity: 0.0,
              child: Column(
                children: const [
                  Icon(Icons.local_taxi, color: Colors.white,size: 40),
                  Text("택시",style: TextStyle(color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  // Widget _buildMiddle() {
  //   return null;
  // }
  //
  // Widget _buildBottom() {
  //   return null;
  // }
}
