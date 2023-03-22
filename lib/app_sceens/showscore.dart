import 'package:flutter/material.dart';
import './game1_widget.dart';

class EndGame extends StatefulWidget {
  const EndGame(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<EndGame> createState() => _EndGameState();
}

class _EndGameState extends State<EndGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[300],
        body: Center(
          child: Container(
            //margin: EdgeInsets.only(top: 20, right: 10, left: 10),
            width: 300,
            height: 400,
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
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                          size: 40,
                        ),
                        const Text(
                          'เก่งมาก',
                          style: TextStyle(
                              fontFamily: 'Mitr',
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                          size: 40,
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: const Text(
                      'คะแนนของคุณคือ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: 'Mitr'),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      '$counter/20',
                      style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 80,
                          fontFamily: 'Mitr'),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                          counter = 0;
                        },
                        child: const Text(
                          'ออก',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Mitr',
                          ),
                        ))),
              ],
            ),
          ),
        ));
  }
}
