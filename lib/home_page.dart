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
        ),
      ),
    );
  }
}
