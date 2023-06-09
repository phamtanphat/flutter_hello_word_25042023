import 'package:flutter/material.dart';

class DemoBuildContextWidget extends StatefulWidget {
  String name = "Demo build context update";

  static DemoBuildContextWidget? of(BuildContext context) {
    return context.findAncestorWidgetOfExactType();
  }

  @override
  State<DemoBuildContextWidget> createState() => _DemoBuildContextWidgetState();
}

class _DemoBuildContextWidgetState extends State<DemoBuildContextWidget> {
  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      child: ChildrenWidget(),
    );
  }
}

class ParentWidget extends StatefulWidget {

  Widget child;

  ParentWidget({required this.child});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  @override
  Widget build(BuildContext context) {
    DemoBuildContextWidget? demoBuildContextWidget = DemoBuildContextWidget.of(context);
    return Column(
      children: [
        Text("Value Demo Build context: ${demoBuildContextWidget?.name}"),
        Text("Parent widget"),
        widget.child
      ],
    );
  }
}

class ChildrenWidget extends StatelessWidget {
  const ChildrenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Children widget");
  }
}

