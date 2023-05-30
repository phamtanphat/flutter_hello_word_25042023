import 'package:flutter/material.dart';
class ColumnAndRowWidget extends StatefulWidget {
  const ColumnAndRowWidget({Key? key}) : super(key: key);

  @override
  State<ColumnAndRowWidget> createState() => _ColumnAndRowWidgetState();
}

class _ColumnAndRowWidgetState extends State<ColumnAndRowWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Widget widgetBaiTap2() {
    return Container();
  }

  Widget widgetBaiTap1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Container(
                        color: Colors.red,
                        child: Center(
                            child: Text("A")
                        )
                    )
                ),
                Expanded(
                    child: Container(
                        color: Colors.pink,
                        child: Center(
                            child: Text("B")
                        )
                    )
                ),
                Expanded(
                    child: Container(
                        color: Colors.orange,
                        child: Center(
                            child: Text("C")
                        )
                    )
                ),
                Expanded(
                    child: Container(
                        color: Colors.blue,
                        child: Center(
                            child: Text("D")
                        )
                    )
                ),
              ],
            )
        ),
        Expanded(
          child: Container(color: Colors.blue),
        )
      ],
    );
  }
}
