import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipOval(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          /*Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'My Digital Currency',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 20.0),
              ),
            ),
          ),
          */
          ClipOval(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppBar2 extends StatelessWidget {
  final double barHeight = 120.0;

  const MyAppBar2();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Dosa Bhai Donia, Dhaka 11",
            style: TextStyle(color: Colors.amber),
          ),
          Text("From Deserts. cold Beverages. Juice..",
              style: TextStyle(color: Colors.amber)),
        ],
      ),
    );
  }
}
