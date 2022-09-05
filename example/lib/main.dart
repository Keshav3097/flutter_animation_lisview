import 'package:flutter/material.dart';
import 'package:flutter_animation_list/flutter_animation_list.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home: const AnimationListExample(),
    );
  }
}

class AnimationListExample extends StatefulWidget {
  const AnimationListExample({Key? key}) : super(key: key);

  @override
  State<AnimationListExample> createState() => _AnimationListExampleState();
}

class _AnimationListExampleState extends State<AnimationListExample> {

  final List<String> data = List<String>.generate(100, (int index) => "Index $index").toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animation List Example",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: AnimationListView(
          duration: 10000,
          reBounceDepth: 10.0,
          children: data.map((item) {
            return _buildTile(item);
          }).toList(),
        ),
      )
    );
  }

  Widget _buildTile(String title) {
    return Container(
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: Colors.blue.shade100,
          border: Border.all(color: Colors.grey.shade50)
        ),
      child: Center(
        child: Text(
          title
        ),
      ),
    );
  }
}

