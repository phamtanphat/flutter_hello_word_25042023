import 'package:flutter/material.dart';
import 'package:flutter_hello_word_25042023/stack_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: StackWidget(),
      ),
    );
  }
}
