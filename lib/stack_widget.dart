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
          child: Container(color: Colors.red, width: 200, height: 200),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(color: Colors.blue, width: 150, height: 150),
        )
      ],
    );
  }
}
