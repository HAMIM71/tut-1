import 'package:flutter/material.dart';
import 'mylistview.dart';

class MyData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String todo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Data"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Text(todo),
      ),
    );
  }
}
