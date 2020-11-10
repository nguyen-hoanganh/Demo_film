import 'package:flutter/material.dart';

class AccountView extends StatefulWidget {
  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 45, left: 15 , right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.add_alert),
              Container(
                padding: EdgeInsets.only(left: 5, right: 5 , top: 3 , bottom: 3),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)
                ),
                child:Row(
                  children: [
                    Text('Sign In'),
                    Icon(Icons.person_outline)
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(vertical: 40),
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: ExactAssetImage('assets/images/banner.jpg'),
                fit: BoxFit.cover,
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [Text('100',style: TextStyle(fontWeight: FontWeight.bold),),Text('Place',style: TextStyle(fontWeight: FontWeight.bold),)],),
                Column(children: [Text('100',style: TextStyle(fontWeight: FontWeight.bold),),Text('What',style: TextStyle(fontWeight: FontWeight.bold),)],),
                Column(children: [Text('100',style: TextStyle(fontWeight: FontWeight.bold),),Text('Here?',style: TextStyle(fontWeight: FontWeight.bold),)],),
                Icon(Icons.navigate_next_rounded,color: Colors.black,size: 32,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
