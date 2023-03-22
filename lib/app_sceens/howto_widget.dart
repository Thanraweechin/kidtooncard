import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HowtoPage extends StatefulWidget {
  const HowtoPage({Key? key}) : super(key: key);

  @override
  State<HowtoPage> createState() => _HowtoPageState();
}

class _HowtoPageState extends State<HowtoPage> {
  @override
  Widget build(BuildContext context) {
    Widget tapbar() {
      return SafeArea(
          child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: IconButton(
                  color: Colors.brown[700],
                  icon: const Icon(CupertinoIcons.back, size: 40),
                  onPressed: () => Navigator.pushNamed(context, '/home'))),
          Container(
              margin: EdgeInsets.only(top: 20, left: 115),
              child: Text(
                'วิธีใช้',
                style: TextStyle(
                    fontFamily: 'Mitr',
                    fontSize: 30,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.w600),
              )),
        ],
      ));
    }

    Widget HowToArea() {
      return Container(
          margin: EdgeInsets.only(top: 20),
          width: 450,
          height: 1750,
          decoration: BoxDecoration(
              color: Colors.orange[50],
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10,
                    spreadRadius: 1)
              ]),
          child: Column(children: [
            Container(
                margin: EdgeInsets.only(top: 30),
                width: 350,
                height: 550,
                decoration: BoxDecoration(
                  color: Colors.brown[700],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 100),
                      color: Colors.yellow[600],
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'สแกนการ์ด',
                        style: TextStyle(
                            fontFamily: 'Mitr',
                            fontWeight: FontWeight.w500,
                            color: Colors.brown[700],
                            fontSize: 30),
                      ),
                    ),
                    Row(children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: const Image(
                              image: AssetImage('image/card.png'), width: 150)),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Column(children: [
                            Text(
                              '1. เลือกการ์ด',
                              style: TextStyle(
                                  fontFamily: 'Mitr',
                                  fontSize: 20,
                                  color: Colors.amber[50],
                                  fontWeight: FontWeight.w300),
                            ),
                            Text('ที่ต้องการสแกน',
                                style: TextStyle(
                                    fontFamily: 'Mitr',
                                    fontSize: 20,
                                    color: Colors.amber[50],
                                    fontWeight: FontWeight.w300))
                          ])),
                    ]),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text('2. เลือกตัวเลือก',
                                  style: TextStyle(
                                      fontFamily: 'Mitr',
                                      fontSize: 20,
                                      color: Colors.amber[50],
                                      fontWeight: FontWeight.w300)),
                            ),
                            Container(
                              //margin: EdgeInsets.only(right: 40),
                              child: Text('สแกนการ์ด',
                                  style: TextStyle(
                                      fontFamily: 'Mitr',
                                      fontSize: 20,
                                      color: Colors.amber[50],
                                      fontWeight: FontWeight.w300)),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: const Image(
                            image: AssetImage('image/pack.png'),
                            width: 155,
                          ),
                        )
                      ],
                    ),
                    Row(children: [
                      Container(
                          padding: EdgeInsets.all(20),
                          child: Image(
                              image: AssetImage('image/camera.png'),
                              width: 130)),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Column(children: [
                            Text(
                              '3. นำกล้องฉาย',
                              style: TextStyle(
                                  fontFamily: 'Mitr',
                                  fontSize: 20,
                                  color: Colors.amber[50],
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              'ไปที่การ์ด',
                              style: TextStyle(
                                  fontFamily: 'Mitr',
                                  fontSize: 20,
                                  color: Colors.amber[50],
                                  fontWeight: FontWeight.w300),
                            ),
                            Text('เพื่อทำการสแกน',
                                style: TextStyle(
                                    fontFamily: 'Mitr',
                                    fontSize: 20,
                                    color: Colors.amber[50],
                                    fontWeight: FontWeight.w300))
                          ])),
                    ]),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 30),
                width: 350,
                height: 1100,
                decoration: BoxDecoration(
                  color: Colors.brown[700],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 100),
                      color: Colors.yellow[600],
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'เล่นเกม',
                        style: TextStyle(
                            fontFamily: 'Mitr',
                            fontWeight: FontWeight.w500,
                            color: Colors.brown[700],
                            fontSize: 30),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: Colors.yellow[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                            image: AssetImage('image/gametab.png'),
                            width: 250)),
                    Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 20),
                        child: Column(children: [
                          Text(
                            '1. เลือกเกมที่',
                            style: TextStyle(
                                fontFamily: 'Mitr',
                                fontSize: 20,
                                color: Colors.amber[50],
                                fontWeight: FontWeight.w300),
                          ),
                          Text('ต้องการ',
                              style: TextStyle(
                                  fontFamily: 'Mitr',
                                  fontSize: 20,
                                  color: Colors.amber[50],
                                  fontWeight: FontWeight.w300))
                        ])),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.yellow[50],
                              borderRadius: BorderRadius.circular(15)),
                          child: const Image(
                            image: AssetImage('image/categorypage.png'),
                            width: 155,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text('2. เลือกหมวด',
                                  style: TextStyle(
                                      fontFamily: 'Mitr',
                                      fontSize: 20,
                                      color: Colors.amber[50],
                                      fontWeight: FontWeight.w300)),
                            ),
                            Container(
                              //margin: EdgeInsets.only(right: 40),
                              child: Text('คำศัพท์',
                                  style: TextStyle(
                                      fontFamily: 'Mitr',
                                      fontSize: 20,
                                      color: Colors.amber[50],
                                      fontWeight: FontWeight.w300)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text('เริ่มเล่น',
                                      style: TextStyle(
                                          fontFamily: 'Mitr',
                                          fontSize: 25,
                                          color: Colors.amber[50],
                                          fontWeight: FontWeight.w300)),
                                ),
                                Container(
                                  //margin: EdgeInsets.only(right: 40),
                                  child: Text('เกมได้เลย!',
                                      style: TextStyle(
                                          fontFamily: 'Mitr',
                                          fontSize: 25,
                                          color: Colors.amber[50],
                                          fontWeight: FontWeight.w300)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.yellow[600],
                                borderRadius: BorderRadius.circular(15)),
                            child: const Image(
                              image: AssetImage('image/gamepage.png'),
                              width: 155,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ]));
    }

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              color: Colors.amber[300],
              child: Column(
                children: [tapbar(), HowToArea()],
              ))),
    );
  }
}
