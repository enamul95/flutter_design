import 'package:flutter/material.dart';

class SliverAppBarDesign extends StatefulWidget {
  @override
  _SliverAppBarSate createState() => _SliverAppBarSate();
}

class _SliverAppBarSate extends State<SliverAppBarDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: headerSliverBuilder,
        body: Center(
          child: Text("Sample Text"),
        ),
      ),
    );
  }

  List<Widget> headerSliverBuilder(
      BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        expandedHeight: 200.0,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("Collapsing Toolbar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                )),
            background: Image.network(
              "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
              fit: BoxFit.cover,
            )),
      ),
    ];
  }
}
