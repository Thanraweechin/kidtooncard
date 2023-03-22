import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryG1 extends StatelessWidget {
  const CategoryG1({Key? key}) : super(key: key);

  Widget Categorypage(context) {
    var tapbar = Container(
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: IconButton(
                  icon: Icon(CupertinoIcons.back, size: 40),
                  onPressed: () => Navigator.pushNamed(context, '/home'))),
          Container(
            margin: EdgeInsets.only(top: 10, left: 55),
            child: Text(
              'หมวดคำศัพท์',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Mitr',
                  color: Colors.brown[700]),
            ),
          ),
        ],
      ),
    );
    var livingtap = GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/livingg1');
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 150,
          decoration: BoxDecoration(
            color: Colors.amber[300],
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5,
                  spreadRadius: 1)
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: const Image(
                  image: AssetImage('image/living.png'),
                  width: 120,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: Text(
                  'ห้องนั่งเล่น',
                  style: TextStyle(
                      fontFamily: 'Mitr',
                      fontSize: 30,
                      color: Colors.brown[700]),
                ),
              )
            ],
          ),
        ));
    var kichentap = Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.amber[300],
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 0.0),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: const Image(
              image: AssetImage('image/oven.png'),
              width: 120,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
              'ห้องครัว',
              style: TextStyle(
                  fontFamily: 'Mitr', fontSize: 30, color: Colors.brown[700]),
            ),
          )
        ],
      ),
    );
    var bedroomtap = Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.amber[300],
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 0.0),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: const Image(
              image: AssetImage('image/bed.png'),
              width: 120,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
              'ห้องนอน',
              style: TextStyle(
                  fontFamily: 'Mitr', fontSize: 30, color: Colors.brown[700]),
            ),
          )
        ],
      ),
    );
    var bathroomtap = Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.amber[300],
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 0.0),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Image(
              image: AssetImage('image/bath.png'),
              width: 120,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
              'ห้องน้ำ',
              style: TextStyle(
                  fontFamily: 'Mitr', fontSize: 30, color: Colors.brown[700]),
            ),
          )
        ],
      ),
    );
    var garagetap = Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.amber[300],
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 0.0),
              blurRadius: 5,
              spreadRadius: 1)
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Image(
              image: AssetImage('image/moon.png'),
              width: 120,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
              'ดาวเคราะห์',
              style: TextStyle(
                  fontFamily: 'Mitr', fontSize: 30, color: Colors.brown[700]),
            ),
          )
        ],
      ),
    );
    return ListView(children: [
      Container(child: tapbar),
      Column(
        children: [livingtap, kichentap, bedroomtap, bathroomtap, garagetap],
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(color: Colors.orange[50]),
            child: Categorypage(context)));
  }
}
