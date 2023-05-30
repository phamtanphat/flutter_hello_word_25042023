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
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10)
          ),
          width: 200,
          height: 200,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(color: Colors.red, width: 100, height: 500),
              ),
              Positioned(
                left: -50,
                child: Container(color: Colors.blue, width: 100, height: 100),
              ),
            ],
          ),
        )
      ],
    );
  }
}
