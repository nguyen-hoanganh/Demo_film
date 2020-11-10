import 'package:flutter/material.dart';

class DiscoverView extends StatefulWidget {
  @override
  _DiscoverViewState createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "Movie",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("TvShow"),
                ],
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Icon(Icons.filter_list_sharp,color: Colors.white,),
              )
            ],
          ),
        ),
        Container(
          height: 160,
          margin: EdgeInsets.only(left: 15, top: 20, right: 15),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              FittedBox(
                child: Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(60)),
                    child: Image(
                      image: AssetImage('assets/film/film_2.jpeg'),
                      // height: 200,
                    ),
                  ),
                ),
                fit: BoxFit.contain,
                alignment: Alignment.centerLeft,
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Đối Đầu"),
                      Text("Oct,23,2020"),
                      Text("Action / Thriller"),
                      Text(
                          "Tỷ phú công nghệ CEO Donovan Chalmers đang nắm giữ trong tay công nghệ mang tính hủy diệt toàn ..."),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10, bottom: 3),
                          padding:
                          EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        _buildContainer(image: "assets/film/film_2.jpeg"),
        _buildContainer(image: "assets/film/film_1.jpg"),
      ],
    );
  }
}


Widget _buildContainer({String image}){
  return  Container(
    height: 160,
    margin: EdgeInsets.only(left: 15, top: 20, right: 15),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15)),
    child: Row(
      children: [
        FittedBox(
          child: Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(60)),
              child: Image(
                image: AssetImage(image),
                // height: 200,
              ),
            ),
          ),
          fit: BoxFit.contain,
          alignment: Alignment.centerLeft,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Đối Đầu"),
                Text("Oct,23,2020"),
                Text("Action / Thriller"),
                Text(
                    "Tỷ phú công nghệ CEO Donovan Chalmers đang nắm giữ trong tay công nghệ mang tính hủy diệt toàn ..."),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 10, bottom: 3),
                    padding:
                    EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}