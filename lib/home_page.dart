import 'package:flutter/material.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    color: Colors.red,
                    child: Text("A")
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                    color: Colors.green,
                    child: Text("B")
                )
            ),
            Expanded(
                flex: 3,
                child: Container(
                    color: Colors.blue,
                    child: Text("C")
                )
            ),
            Expanded(
                flex: 4,
                child: Container(
                    color: Colors.orange,
                    child: Text("D")
                )
            ),
          ],
        ),
      ),
    );
  }
}

