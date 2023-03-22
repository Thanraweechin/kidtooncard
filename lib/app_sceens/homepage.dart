import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './category_widget.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  Widget Homepage(BuildContext context) {
    var tapbar = SafeArea(
        child: Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: IconButton(
                  color: Colors.brown[700],
                  icon: const Icon(CupertinoIcons.back, size: 40),
                  onPressed: () => Navigator.pushNamed(context, '/'))),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              'KID TOON CARD',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Arl',
                  color: Colors.brown[700]),
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 10),
              child: IconButton(
                  color: Colors.brown[700],
                  icon: const Icon(CupertinoIcons.info, size: 40),
                  onPressed: () => Navigator.pushNamed(context, '/howto'))),
        ],
      ),
    ));
    var cardScan = Container(
        margin: EdgeInsets.only(top: 20, bottom: 30),
        width: 350,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.orange[50],
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 0.0),
                blurRadius: 10,
                spreadRadius: 1)
          ],
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: (Icon(Icons.camera_alt_rounded,
                      size: 50, color: Colors.brown[700])),
                ),
                Container(
                    height: 50,
                    margin: EdgeInsets.only(left: 30),
                    child: Text('สแกน',
                        style: TextStyle(
                            color: Colors.brown[700],
                            fontFamily: 'Mitr',
                            fontSize: 40,
                            fontWeight: FontWeight.w500))),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    'การ์ด',
                    style: TextStyle(
                        color: Colors.brown[700],
                        fontFamily: 'Mitr',
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Column(children: [
              Container(
                  padding: EdgeInsets.only(left: 45, top: 40),
                  child: Image(
                    image: AssetImage('image/imageScancard.png'),
                    width: 145,
                  ))
            ]),
          ],
        ));
    var gamesign = Container(
      padding: const EdgeInsets.only(
        top: 20,
        left: 30,
        right: 297,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.amber[300],
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -4.0),
              blurRadius: 2.5,
              spreadRadius: 1)
        ],
      ),
      child: Text(
        'เกม',
        style: TextStyle(
            fontFamily: 'Mitr',
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.brown[700],
            height: 1),
      ),
    );
    var tapgame = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/categoryg1');
                      },
                      child: Container(
                        width: 210,
                        height: 280,
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey[100],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                margin: EdgeInsets.only(top: 10),
                                child: const Image(
                                  image: AssetImage('image/boxgame1.png'),
                                  width: 190,
                                )),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                'ทายสิ นี่คืออะไร?',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Mitr',
                                  color: Colors.brown[700],
                                ),
                              ),
                            ),
                            Text(
                              'เกมจับคู่ภาพและคำศัพท์ให้ถูกต้อง',
                              style: TextStyle(
                                  fontFamily: 'Mitr',
                                  color: Colors.brown[700],
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ))),
              Container(
                margin: const EdgeInsets.only(bottom: 20, left: 20),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/categoryg2');
                    },
                    child: Container(
                      width: 210,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[100],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              margin: const EdgeInsets.only(top: 10),
                              child: const Image(
                                image: AssetImage('image/boxgame2.png'),
                                width: 190,
                              )),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              'หาฉันให้เจอสิ?',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Mitr',
                                color: Colors.brown[700],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Text(
                              'เกมค้นหาภาพตามคำศัพท์',
                              style: TextStyle(
                                  fontFamily: 'Mitr',
                                  color: Colors.brown[700],
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          )),
    );

    return Column(children: [tapbar, cardScan, gamesign, tapgame]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(color: Colors.amber[300]),
            child: Homepage(context)));
  }
}
