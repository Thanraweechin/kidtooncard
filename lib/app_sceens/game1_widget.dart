import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidtooncard/app_sceens/showscore.dart';
import './endgame_widget.dart';

int counter = 0;
int no = 1;

class Game1Widget extends StatefulWidget {
  const Game1Widget({Key? key, required this.num, required this.info})
      : super(key: key);

  final int num;
  final Map<dynamic, dynamic> info;

  @override
  State<Game1Widget> createState() => _Game1WidgetState();
}

class _Game1WidgetState extends State<Game1Widget> {
  late String imgUrl;
  late String choiceT;
  late List<String> choice;
  late String no;
  final bool _active = false;

  bool previous = false;
  Widget? nextPage;

  @override
  void initState() {
    super.initState();
    imgUrl = widget.info[widget.num]["imgUrl"];
    choice = widget.info[widget.num]["choice"];
    choiceT = widget.info[widget.num]["choiceT"];
    no = widget.info[widget.num]["no"];
    if (widget.num > 1 && widget.num <= widget.info.length) {
      previous = true;
    }
    if (widget.num < widget.info.length) {
      nextPage = Game1Widget(
        num: widget.num + 1,
        info: widget.info,
      );
    }
  }

  Widget Game() {
    var tapbar = Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: IconButton(
                  icon: Icon(CupertinoIcons.back, size: 40),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                    counter = 0;
                  })),
          Container(
            margin: EdgeInsets.only(top: 10, left: 65),
            child: Text(
              'ทายสินี่คืออะไร?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Mitr',
                  color: Colors.brown[700]),
            ),
          ),
        ],
      ),
    );
    var gamearea = Container(
        margin: EdgeInsets.only(top: 20, right: 10, left: 10),
        width: 400,
        height: 660,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Column(
                    children: [
                      Text(
                        'ข้อที่',
                        style: TextStyle(
                            fontFamily: 'Mitr',
                            fontSize: 25,
                            color: Colors.brown[700]),
                      ),
                      Text(
                        no,
                        style: TextStyle(
                            height: 1.12,
                            fontFamily: 'Mitr',
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.brown[700]),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20),
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.brown.shade700, width: 5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 30,
                      ),
                      Text(
                        '$counter',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Arl',
                            fontWeight: FontWeight.bold,
                            color: Colors.brown[700]),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'What is this?',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Arl', color: Colors.brown[700]),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                child: Image(image: AssetImage(imgUrl), width: 290)),
            Clicked(
              choiceName: choice[0],
              color: Colors.brown,
              active: _active,
              choiceTrue: choiceT,
              nextPage: nextPage ?? EndGame(context),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Clicked(
                  choiceName: choice[1],
                  color: Colors.brown,
                  active: _active,
                  choiceTrue: choiceT,
                  nextPage: nextPage ?? EndGame(context),
                )),
          ],
        ));
    return Column(
      children: [tapbar, gamearea],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(color: Colors.amber[300]),
            child: Game()));
  }
}

class Clicked extends StatefulWidget {
  Clicked(
      {Key? key,
      this.choiceName,
      this.choiceTrue,
      this.color,
      required this.active,
      required this.nextPage})
      : super(key: key);

  final choiceName;
  final choiceTrue;
  final color;
  final Widget nextPage;
  bool active;
  bool previous = false;
  //var correct = Text(choiceTrue);
  @override
  State<Clicked> createState() => _ClickedState();
}

class _ClickedState extends State<Clicked> {
  void _click() {
    setState(() {
      widget.active = true;
    });
  }

  Color checkAnswer(choiceName, choiceTrue) {
    if (choiceName == choiceTrue) {
      return Colors.green;
    } else {
      return Colors.redAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    var choice = SingleChildScrollView(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: widget.active
                ? checkAnswer(widget.choiceName, widget.choiceTrue)
                : widget.color,
            elevation: 3,
            padding: EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () {
          _click();
          (widget.choiceName == widget.choiceTrue) ? counter++ : counter;
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => widget.nextPage ?? Container()));
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Text(widget.choiceName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Arl',
                fontWeight: FontWeight.w100,
                fontSize: 25,
              )),
        ),
      ),
    );
    return choice;
  }
}
