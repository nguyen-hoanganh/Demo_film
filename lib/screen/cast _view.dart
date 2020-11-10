import 'package:flutter/material.dart';

class CastView extends StatefulWidget {
  @override
  _CastViewState createState() => _CastViewState();
}

class _CastViewState extends State<CastView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  child: Image(
                    image: AssetImage('assets/images/cast_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
