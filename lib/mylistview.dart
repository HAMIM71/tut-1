import 'package:flutter/material.dart';
import 'home.dart';
class Listview extends StatefulWidget {
  @override
  _ListviewState createState() => _ListviewState();
}
class _ListviewState extends State<Listview> {
  List<String> notes = [
    "Python",
    "C++",
    "C",
    "Javascript",
    "Java",
    "Perl",
    "Assembely",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple listview"),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: notes.length,
          itemBuilder: (context,pos){
           return new GestureDetector(
             onTap: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => MyData(),
                   settings: RouteSettings(

                     arguments: notes[pos],
                   ),
                 ),
               );
             },
              child: Card(
                 margin: EdgeInsets.all(8),
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text(notes[pos],style: TextStyle(
                     fontSize: 18.0,
                     height: 2,
                     color: Colors.red,
                     fontWeight: FontWeight.bold,
                   )),
                 ),
               ),
           );
          }
      ),
    );
  }
}