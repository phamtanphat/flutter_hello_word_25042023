import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("Abc"),
              leading: Icon(Icons.add_call, color: Colors.blue),
              trailing: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text( "Click vào trailing")));
                  },
                  child: Icon(Icons.add)
              ),
            ),
          );
      },
    );
  }
}
