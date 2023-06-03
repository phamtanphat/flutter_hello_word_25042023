import 'package:flutter/material.dart';
import 'package:flutter_hello_word_25042023/demo_build_context_widget.dart';
import 'package:flutter_hello_word_25042023/life_cycle_statefull_widget.dart';
import 'package:flutter_hello_word_25042023/list_view_widget.dart';
import 'package:flutter_hello_word_25042023/stack_widget.dart';

import 'demo_key_widget.dart';

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
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          child: DemoBuildContextWidget(),
        ),
      ),
    );
  }
}
