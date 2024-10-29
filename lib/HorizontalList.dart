
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget{
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 200,
      // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 160,
          color: Colors.red,
        ),
        Container(
          width: 160,
          color: Colors.blue,
        ),
        Container(
          width: 160,
          color: Colors.green,
        ),
        Container(
          width: 160,
          color: Colors.yellow,
        ),
        Container(
          width: 160,
          color: Colors.orange,
        ),
      ],
    )
    );
  }
}