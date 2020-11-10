import 'package:film_demo/screen/home/home_2_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.search_outlined,
                    color: Colors.white54,
                  ),
                  Text(
                    "Search for a movie , tv show , person",
                    style: TextStyle(color: Colors.white54),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "In Theaters ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "On TV ",
                      style: TextStyle(color: Colors.white54, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildColumn(
                      image: 'assets/film/film_1.jpg',
                      name: 'Vẫn Cứ Thích Em '),
                  _buildColumn(
                      image: 'assets/film/film_2.jpeg', name: 'Tru Tiên '),
                  _buildColumn(
                      image: 'assets/film/film_3.jpeg', name: 'Mắt Biếc'),
                ],
              ),
            ),
            Home2()
          ],
        ),
      ),
    );
  }

  Widget _buildColumn({String image, String name}) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
