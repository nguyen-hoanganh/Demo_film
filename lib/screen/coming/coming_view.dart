import 'package:film_demo/screen/coming/movie_view.dart';
import 'package:film_demo/screen/coming/tvshow_view.dart';
import 'package:flutter/material.dart';
import 'package:tabbar/tabbar.dart';

class ComingView extends StatefulWidget {
  _ComingViewState createState() => _ComingViewState();
}

class _ComingViewState extends State<ComingView> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          child: TabbarHeader(
            backgroundColor: Colors.white,
            controller: controller,
            indicatorColor: Colors.black,
            tabs: [
              Tab(child: Text('Movie',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ,fontSize: 18),),),
              Tab(child: Text('TV Shows',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ,fontSize: 18),),),
            ],
          ),
        ),
      ),
      body: TabbarContent(
        controller: controller,
        children: <Widget>[
          MovieView(),
          TvShowView(),
        ],
      ),
    );
  }
}
