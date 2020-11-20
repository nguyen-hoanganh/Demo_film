import 'package:flutter/material.dart';
import 'item_container.dart';

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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                child: Image(
                  image: AssetImage('assets/images/cast_1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Text(
                'Nguyễn Hoàng Anh',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.add_circle_outline,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: Icon(Icons.favorite_border_sharp),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Text(
                'Biography',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Text(
                'We don"t have a biography for Lương Anh vũ ',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Text(
                'Personal Info',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            ContainerView(),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Text(
                'Known For',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            _buildColumn(
              image: 'assets/film/film_1.jpg',
              name: 'Sài Gòn'
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15 ,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Photo',style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                  Text('View more')
                ],
              ),
            ),
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image(image: AssetImage('assets/film/film_1.jpg'),),
                Image(image: AssetImage('assets/film/film_1.jpg'),),
                Image(image: AssetImage('assets/film/film_1.jpg'),),
                Image(image: AssetImage('assets/film/film_1.jpg'),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildColumn({String image, String name}) {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          height: 150,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            name,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
