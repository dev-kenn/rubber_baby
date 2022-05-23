import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rubber_baby/question_ten/question_ten.dart';


class QuestionEight extends StatefulWidget {
  @override
  _QuestionEightState createState() => _QuestionEightState();
}
class _QuestionEightState extends State<QuestionEight> {
  final personNextToMe = 'That reminds me about the time when I was ten and our neighbor, her name was Mrs. Mable, and she said...';

  @override
  Widget build(BuildContext context) {




    return SafeArea(
      child: Scaffold(
        body: Wrap(children: [
          Chip(label: Text('I')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('need')),
          Chip(label: Text('a')),
          Chip(label: Text('job')),
        ])
      ),
    );
  }

}