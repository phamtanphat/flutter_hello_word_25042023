import 'package:flutter/material.dart';
class LifeCycleStateFullWidget extends StatefulWidget {
  const LifeCycleStateFullWidget({Key? key}) : super(key: key);

  @override
  State<LifeCycleStateFullWidget> createState() => _LifeCycleStateFullWidgetState();
}

// State object
class _LifeCycleStateFullWidgetState extends State<LifeCycleStateFullWidget> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Count = $count", style: TextStyle(fontSize: 30)),
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                  setState(() {
                    count += 1;
                    print(count);
                  });
              }, child: Text("Increase")),
              ElevatedButton(onPressed: () {

              }, child: Text("Decrease")),
              ElevatedButton(onPressed: () {

              }, child: Text("Reset")),
            ],
          ),
        )
      ],
    );
  }
}
