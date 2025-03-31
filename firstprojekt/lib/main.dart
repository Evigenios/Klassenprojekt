import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text(
              "YEssssssssssssssss",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color.fromARGB(255, 166, 0, 255),
                fontSize: 22.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Noooooooooooooo",
              maxLines: 2,
              overflow: TextOverflow.fade,
              style: TextStyle(
                color: Color.fromARGB(255, 166, 0, 255),
                fontSize: 22.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Divider(),
            Row(
              spacing: 16,
              children: [
                Text("Test"),
                Text("Test2"),
                Text("Test3"),
              ],
            ),
            Column(
              spacing: 16,
              children: [
                Text("Test"),
                Text("Test2"),
                Text("Test3"),
              ],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Text("Hello"),
            ),
            SizedBox(height: 16),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text("Hello"),
            ),
            Divider(),
            Divider(),
            SizedBox(height: 33),
          Container(
              
              child: Text("Hello"),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
              margin: EdgeInsets.all(25.0),
              padding: EdgeInsets.all(40.0),
            ),
            Divider(),
          ],
          
        ),
           ),
    );
  }
}