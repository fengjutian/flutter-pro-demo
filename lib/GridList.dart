import 'package:flutter/material.dart';

class GridList extends StatelessWidget{
  const GridList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: GridView.count(
      crossAxisCount: 2,
      children: List.generate(100, (index){
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.green)),
          child:     Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ) ,
      );
      })
    ),
  );
  }
}