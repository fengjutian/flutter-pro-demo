import 'package:flutter/material.dart';
// import 'TextSection.dart';
// import 'ImageSection.dart';
// import './ButtonSection.dart';
// import './TitleSection.dart';

// 基础 ListView 列表
// import './BasicList.dart';
// 水平滑动的列表
// import './HorizontalList.dart';
// 网格列表
// import './GridList.dart';

import './MulDataTypeSources.dart' show ListItem, HeadingItem, MessageItem;



// void main() {
//   runApp(MyApp(
//     items: List<ListItem>.generate(
//       1000,
//       (i) => i % 6 == 0 
//         ? HeadingItem('Heading $i') 
//         : MessageItem('Sender $i', 'Message body $i'),
//     ),
//   ));
// }

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  const MyApp({super.key, required this.items});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Demo';

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),


        // body: const SingleChildScrollView(
        //   child: Column(
        //     children: [
        //         TitleSection(name: 'hello world', location: 'nanjing'),
        //         ImageSection(image: 'images/lake.jpg',),
        //         TextSection(
        //           description: 
        //             'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
        //             'Bernese Alps. Situated 1,578 meters above sea level, it '
        //             'is one of the larger Alpine Lakes. A gondola ride from '
        //             'Kandersteg, followed by a half-hour walk through pastures '
        //             'and pine forest, leads you to the lake, which warms to 20 '
        //             'degrees Celsius in the summer. Activities enjoyed here '
        //             'include rowing, and riding the summer toboggan run.',
        //         ),
        //         ButtonSection(),
        //     ]
        //   )
        // )

        // body: const BasicList()

        // body: const HorizontalList()

        // body: const GridList()

        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            );
          },
        )
      )
    );
  }
}

