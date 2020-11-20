import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  @override
  _ContainerViewState createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      padding: EdgeInsets.only(left: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _itemColumn(text: ' Gender' , text2: 'Male'),
          _itemColumn(text: 'Known For' , text2: 'Acting'),
          _itemColumn(text: 'Birth' , text2: 'in'),
          _itemColumn(text: 'Known Credits' , text2: '0'),
          _itemColumn(text: 'Official Site' , text2: '-'),
          _itemColumn(text: 'Also Known As' , text2: 'Avin Lu'),
        ],
      ),
    );
  }
}

Widget _itemColumn({String text , String text2}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      Text(
        text2,
        style: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Divider(
        thickness: 1,
        indent: 20,
        endIndent: 20,
      ),
    ],
  );
}
