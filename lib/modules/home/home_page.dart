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
              background: Image.asset('assets/images/background_home.png',
                  fit: BoxFit.fill),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(width: 300, height: 200, color: Colors.black),
          ),
          SliverToBoxAdapter(
            child: SearchWidget(),
          ),
        ],
      ),
    );
  }
}
