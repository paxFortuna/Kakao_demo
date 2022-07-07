import 'package:flutter/material.dart';

class MyKakaoScreen extends StatelessWidget {
  const MyKakaoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("내 정보", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
    );
  }
}
