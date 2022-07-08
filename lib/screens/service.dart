import 'package:flutter/material.dart';
import 'package:kakao_demo/screens/home.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
      "이용서비스 페이지",
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
    );}
}
