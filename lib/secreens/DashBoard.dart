import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.network(''),
            SizedBox(
              child: Text("user name"),
            ), const SizedBox(
              child: Text("user packages"),
            )
          ],
        ),
      ),
    );

  }
}
