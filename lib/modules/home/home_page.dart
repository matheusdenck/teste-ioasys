import 'package:flutter/material.dart';

import 'widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 188,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.asset('assets/images/background_home.png',
                      width: double.maxFinite, fit: BoxFit.fitWidth),
                  Align(alignment: Alignment(0.0, 1.0), child: SearchWidget()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
