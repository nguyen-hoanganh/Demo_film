import 'package:flutter/material.dart';

class ItemView_1 extends StatefulWidget {
  @override
  _ItemView_1State createState() => _ItemView_1State();
}

class _ItemView_1State extends State<ItemView_1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Ngọc Trinh : Chuyến Phiêu Lưu kỳ Thú '),
            Text('May 20 , 2019'),
            Text('Action - 2 h 12 min'),
            // tạo dòng đánh giá ngôi sao
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Text('6,2 (952)')
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    Icon(Icons.link),
                    Icon(Icons.photo_camera_outlined),
                  ],
                )
              ],
            ),
            Text('OverView'),
            Text('Here is trailer'),
            Text('Top Billed Cast'),
            //Tạo list danh sách diễn viên
            Container(
              padding: EdgeInsets.all(10),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _itemCast(image: 'assets/film/film_1.jpg', name: 'Vẫn Em '),
                  _itemCast(
                      image: 'assets/film/film_2.jpeg', name: 'Tru Tiên '),
                  _itemCast(
                      image: 'assets/film/film_3.jpeg', name: 'Mắt Biếc'),
                ],
              ),
            ),
            // Tạo list danh sách cảnh quay
            Text('Stills'),
            Container(
              padding: EdgeInsets.all(10),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _itemStills(
                      image: 'assets/film/film_1.jpg', name: 'Vẫn Em '),
                  _itemStills(
                      image: 'assets/film/film_2.jpeg', name: 'Tru Tiên '),
                  _itemStills(
                      image: 'assets/film/film_3.jpeg', name: 'Mắt Biếc'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _itemCast({String image, String name}) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          height: 100,
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

Widget _itemStills({String name, String image}) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          height: 100,
          width: 150,
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
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
