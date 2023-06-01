import 'dart:math';

import 'package:flutter/material.dart';

class DemoKeyWidget extends StatefulWidget {
  const DemoKeyWidget({Key? key}) : super(key: key);

  @override
  State<DemoKeyWidget> createState() => _DemoKeyWidgetState();
}

class _DemoKeyWidgetState extends State<DemoKeyWidget> {

  final List<Widget> listWidget = [];

  @override
  void initState() {
    super.initState();
    listWidget.add(Children1(key: Key("1233"),));
    listWidget.add(Children1(key: Key("234")));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: listWidget),
        ElevatedButton(
            onPressed: () {
                setState(() {
                   final Widget tmpWidget = listWidget[0];
                   listWidget.removeAt(0);
                   listWidget.add(tmpWidget);
                });
            },
            child: Text("Swap")
        )
      ],
    );
  }
}

class Children1 extends StatelessWidget {
  const Children1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Color.fromARGB(255, randomColor(), randomColor(), randomColor())
    );
  }

  int randomColor() {
    return Random().nextInt(255);
  }
}
