import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[300],
        body: Center(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 65),
                  child: const Image(
                    image: AssetImage('image/KidToonCard.png'),
                    width: 400,
                  )),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Text(
                    'สนุกกับการเรียนรู้การ์ดคำศัพท์ภาษาอังกฤษในรูปแบบ 3 มิติและเกมพัฒนาทักษะการจดจำคำศัพท์',
                    style: TextStyle(
                        fontFamily: 'Mitr',
                        fontSize: 19,
                        color: Colors.brown[700])),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
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
                      },
                      child: const Text(
                        'เริ่ม',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Mitr',
                        ),
                      ))),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Image(
                      image: AssetImage('image/image-firstpage.png'))),
            ],
          ),
        ));
  }
}
