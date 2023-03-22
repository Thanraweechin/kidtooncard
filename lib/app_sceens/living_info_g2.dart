import 'package:flutter/material.dart';
import './game2_widget.dart';

class LivingInfoG2 extends StatefulWidget {
  const LivingInfoG2({Key? key}) : super(key: key);

  @override
  State<LivingInfoG2> createState() => _LivingInfoG2State();
}

class _LivingInfoG2State extends State<LivingInfoG2> {
  var gameInfo = {
    1: {
      "question": "Where is a",
      "word": "book?",
      "choice": [
        "image/book.png",
        "image/newspaper.png",
        "image/plan.png",
        "image/picture.png"
      ],
      "choiceT": "image/book.png",
      "no": "1"
    },
    2: {
      "question": "Where is a",
      "word": "calendar?",
      "choice": [
        "image/clock.png",
        "image/flashlighr.png",
        "image/calender.png",
        "image/carbinet.png"
      ],
      "choiceT": "image/calender.png",
      "no": "2"
    },
    3: {
      "question": "Where is a",
      "word": "armchair?",
      "choice": [
        "image/candle.png",
        "image/chair.png",
        "image/cushion.png",
        "image/sofa.png"
      ],
      "choiceT": "image/chair.png",
      "no": "3"
    },
    4: {
      "question": "Where is a",
      "word": "lamp?",
      "choice": [
        "image/lamp.png",
        "image/clock.png",
        "image/game.png",
        "image/vase.png"
      ],
      "choiceT": "image/lamp.png",
      "no": "4"
    },
    5: {
      "question": "Where is a",
      "word": "cabinet?",
      "choice": [
        "image/calender.png",
        "image/book.png",
        "image/model.png",
        "image/carbinet.png"
      ],
      "choiceT": "image/carbinet.png",
      "no": "5"
    },
    6: {
      "question": "Where is a",
      "word": "candle?",
      "choice": [
        "image/cushion.png",
        "image/candle.png",
        "image/newspaper.png",
        "image/picture.png"
      ],
      "choiceT": "image/candle.png",
      "no": "6"
    },
    7: {
      "question": "Where is a",
      "word": "vase?",
      "choice": [
        "image/telephone.png",
        "image/bookcase.png",
        "image/picture.png",
        "image/vase.png"
      ],
      "choiceT": "image/vase.png",
      "no": "7"
    },
    8: {
      "question": "Where is a",
      "word": "sofa?",
      "choice": [
        "image/TV.png",
        "image/speaker.png",
        "image/sofa.png",
        "image/game.png"
      ],
      "choiceT": "image/sofa.png",
      "no": "8"
    },
    9: {
      "question": "Where is a",
      "word": "newspaper?",
      "choice": [
        "image/newspaper.png",
        "image/model.png",
        "image/flashlighr.png",
        "image/plant.png"
      ],
      "choiceT": "image/newspaper.png",
      "no": "9"
    },
    10: {
      "question": "Where is a",
      "word": "game machine?",
      "choice": [
        "image/calender.png",
        "image/clock.png",
        "image/game.png",
        "image/model.png"
      ],
      "choiceT": "image/game.png",
      "no": "10"
    }
  };
  @override
  Widget build(BuildContext context) {
    return Game2Widget(num: 1, info: gameInfo);
  }
}
