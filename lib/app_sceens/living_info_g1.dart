import 'package:flutter/material.dart';
import './game1_widget.dart';

class LivingInfoG1 extends StatefulWidget {
  const LivingInfoG1({Key? key}) : super(key: key);

  @override
  State<LivingInfoG1> createState() => _LivingInfoG1State();
}

class _LivingInfoG1State extends State<LivingInfoG1> {
  var gameInfo = {
    1: {
      "imgUrl": "image/sofa.png",
      "choice": ["sofa", "book"],
      "choiceT": "sofa",
      "no": "1"
    },
    2: {
      "imgUrl": "image/calender.png",
      "choice": ["armchair", "calendar"],
      "choiceT": "calendar",
      "no": "2"
    },
    3: {
      "imgUrl": "image/model.png",
      "choice": ["decoration", "cabinet"],
      "choiceT": "decoration",
      "no": "3"
    },
    4: {
      "imgUrl": "image/book.png",
      "choice": ["book", "armchair"],
      "choiceT": "book",
      "no": "4"
    },
    5: {
      "imgUrl": "image/bookcase.png",
      "choice": ["book", "bookcase"],
      "choiceT": "bookcase",
      "no": "5"
    },
    6: {
      "imgUrl": "image/carbinet.png",
      "choice": ["cabinet", "bookcase"],
      "choiceT": "cabinet",
      "no": "6"
    },
    7: {
      "imgUrl": "image/clock.png",
      "choice": ["clock", "calendar"],
      "choiceT": "clock",
      "no": "7"
    },
    8: {
      "imgUrl": "image/cushion.png",
      "choice": ["sofa", "cushion"],
      "choiceT": "cushion",
      "no": "8"
    },
    9: {
      "imgUrl": "image/picture.png",
      "choice": ["picture", "television"],
      "choiceT": "picture",
      "no": "9"
    },
    10: {
      "imgUrl": "image/lamp.png",
      "choice": ["lamp", "vase"],
      "choiceT": "lamp",
      "no": "10"
    },
    11: {
      "imgUrl": "image/newspaper.png",
      "choice": ["book", "newspaper"],
      "choiceT": "newspaper",
      "no": "11"
    },
    12: {
      "imgUrl": "image/plan.png",
      "choice": ["plant", "speaker"],
      "choiceT": "plant",
      "no": "12"
    },
    13: {
      "imgUrl": "image/speaker.png",
      "choice": ["speaker", "telephone"],
      "choiceT": "speaker",
      "no": "13"
    },
    14: {
      "imgUrl": "image/telephone.png",
      "choice": ["telephone", "television"],
      "choiceT": "telephone",
      "no": "14"
    },
    15: {
      "imgUrl": "image/chair.png",
      "choice": ["armchair", "sofa"],
      "choiceT": "armchair",
      "no": "15"
    },
    16: {
      "imgUrl": "image/flashlighr.png",
      "choice": ["picture", "flashlight"],
      "choiceT": "flashlight",
      "no": "16"
    },
    17: {
      "imgUrl": "image/candle.png",
      "choice": ["candle", "lamp"],
      "choiceT": "candle",
      "no": "17"
    },
    18: {
      "imgUrl": "image/TV.png",
      "choice": ["clock", "television"],
      "choiceT": "television",
      "no": "18"
    },
    19: {
      "imgUrl": "image/vase.png",
      "choice": ["vase", "rug"],
      "choiceT": "vase",
      "no": "19"
    },
    20: {
      "imgUrl": "image/game.png",
      "choice": ["telephone", "game machine"],
      "choiceT": "game machine",
      "no": "20"
    },
  };
  @override
  Widget build(BuildContext context) {
    return Game1Widget(num: 1, info: gameInfo);
  }
}
