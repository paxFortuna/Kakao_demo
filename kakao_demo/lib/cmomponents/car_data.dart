
import 'package:flutter/material.dart';

class CarData extends StatelessWidget {
  final String name;
  const CarData({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Icon(Icons.local_taxi, color: Colors.white, size: 40),
        Text(name, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
