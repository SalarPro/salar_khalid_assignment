import 'package:flutter/material.dart';

class SalarPro extends StatelessWidget {
  const SalarPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue[400],
            appBar: AppBar(
              title: const Center(child: Text('My first app')),
              backgroundColor: Colors.red[300],
            ),
            body: Column(
              children: <Widget>[
                postImageView("pro.png"),
                postTitleName("Salar Pro"),
              ],
            )));
  }

//image View
  Container postImageView(String imageName) {
    var imageRaduse = 50.0;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(imageRaduse +
              4) // use instead of BorderRadius.all(Radius.circular(20))
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(imageRaduse),
        child: Image.asset("assets/images/$imageName"),
      ),
      margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
    );
  }

//Title View
  Container postTitleName(String name) {
    return Container(
      child: Text(
        name,
        style: const TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
    );
  }
}
