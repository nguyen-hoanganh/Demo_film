import 'package:film_demo/screen/detailpage/detail_1/item_view.dart';
import 'package:flutter/material.dart';

class Detail_1 extends StatefulWidget {
  @override
  _Detail_1State createState() => _Detail_1State();
}

class _Detail_1State extends State<Detail_1> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height/2;
    return Scaffold(
      body: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: Container(
          padding: EdgeInsets.only(top: size),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/cast_1.jpg'),
                  fit: BoxFit.cover)),
          child: ItemView_1(),
        ),
      ),
    );
  }
}
