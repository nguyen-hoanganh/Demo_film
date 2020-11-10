import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MovieView extends StatefulWidget {
  @override
  _MovieViewState createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildContainer(image: 'assets/film/film_1.jpg'),
        _item(),
        _buildContainer(image: 'assets/film/film_1.jpg'),
        _item(),
        _buildContainer(image: 'assets/film/film_1.jpg'),
        _item(),
      ],
    );
  }
}
Widget _buildContainer({String image}){
  return Container(
    height: 130,
    margin: EdgeInsets.only(left: 15 , top: 15 , bottom: 15),
    child:
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(image: AssetImage(image),fit: BoxFit.cover,),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('The 100'),
              Text('Drama , action_adventure'),
              Text('Next Air date , Jun 10 , 2020'),
              Text('100 year in the future , when earth , has been ...'),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _item(){
  return Divider(
    color: Colors.grey,
    thickness: 1,
    indent: 120,
    endIndent: 0,
  );
}