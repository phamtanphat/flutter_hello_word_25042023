import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(color: Colors.red, width: 100, height: 100),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(color: Colors.blue, width: 100, height: 100),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Container(color: Colors.orange, width: 100, height: 100),
        )
      ],
    );
  }
}
