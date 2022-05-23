import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class QuestionEight extends StatefulWidget {
  @override
  _QuestionEightState createState() => _QuestionEightState();
}
class _QuestionEightState extends State<QuestionEight> {
  // var list1 = ['I', '💙', 'Flutter'];
  //
  // final list2 = list1;
  // list2[2] = 'Dart';   // Will this line compile?
  // const list3 = list1; // Will this line compile?

  /*
  we use "var" if we need to change the value of the variable on the run. we use final if the variable will not
  change on the run.

  list2[2] = 'Dart' will fail because we declared it as final


    const list3 = list1;  will not compile because you are assigning a variable to a variable in init state.
   if you truly need to pass the value to another variable during init state, you may declare both as static or
   change the const list3 to late list3 then asign list1 to list3 in override initstate;


   */


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container()
      ),
    );
  }

}