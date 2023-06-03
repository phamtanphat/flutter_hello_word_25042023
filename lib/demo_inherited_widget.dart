import 'dart:math';
import 'package:flutter/material.dart';

class DemoInheritedWidget extends StatefulWidget {
  const DemoInheritedWidget({Key? key}) : super(key: key);

  @override
  State<DemoInheritedWidget> createState() => _DemoInheritedWidgetState();
}

class _DemoInheritedWidgetState extends State<DemoInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return DemoInheritedContainer(
      child: ParentWidget(
        child: ChildrenWidget(),
      ),
    );
  }
}

class DemoInheritedContainer extends StatefulWidget {
  Widget child;

  DemoInheritedContainer({required this.child});

  @override
  State<DemoInheritedContainer> createState() => _DemoInheritedContainerState();
}

class _DemoInheritedContainerState extends State<DemoInheritedContainer> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    print("DemoInheritedContainer build");
    return Column(
      children: [
        Text("Random number: $number"),
        ElevatedButton(
            onPressed: () {
              setState(() {
                number = Random().nextInt(1000);
              });
            },
            child: Text("Call set state")),
        MyInheritedWidget(number: number, child: widget.child)
      ],
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  int number;

  MyInheritedWidget({required super.child, required this.number});

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }
  @override
  bool updateShouldNotify(covariant MyInheritedWidget oldWidget) {
    return false;
  }
}

class ParentWidget extends StatelessWidget {
  Widget child;

  ParentWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    print("Parent build");
    MyInheritedWidget? myInheritedWidget = MyInheritedWidget.of(context);
    return Column(
      children: [
        Text("Inherited Container ${myInheritedWidget?.number.toDouble()}"),
        Text("Parent Widget"),
        child
      ],
    );
  }
}

class ChildrenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Children build");
    return Text("Children Widget");
  }
}
