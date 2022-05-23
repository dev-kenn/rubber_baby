import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class QuestionSeven extends StatefulWidget {
  @override
  _QuestionSevenState createState() => _QuestionSevenState();
}
class _QuestionSevenState extends State<QuestionSeven> {
  final personNextToMe = 'That reminds me about the time when I was ten and our neighbor, her name was Mrs. Mable, and she said...';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(children: [
          Icon(Icons.airline_seat_legroom_reduced),
          Expanded(
            child: Text(personNextToMe),
          ),
          Icon(Icons.airline_seat_legroom_reduced),
        ]),
      ),
    );
  }

}