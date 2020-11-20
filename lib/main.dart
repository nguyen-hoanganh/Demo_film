import 'package:film_demo/screen/detailpage/cast/cast%20_view.dart';
import 'package:film_demo/screen/detailpage/detail_1/detail_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Detail_1(),
    );
  }
}
