import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_isolate/flutter_isolate.dart';

class DartIsolatePage extends StatefulWidget {
  @override
  _DartIsolatePageState createState() => _DartIsolatePageState();
}
class _DartIsolatePageState extends State<DartIsolatePage> {

  String _isolatedValue = "";


  @override
  void initState(){
    _run();
  }

  Future<void> _run() async {
    final isolate = await FlutterIsolate.spawn(isolate1, "hello");
    Timer(Duration(seconds: 5), () {
      print("Pausing Isolate 1");
      isolate.pause();
    });
    Timer(Duration(seconds: 10), () {
      print("Resuming Isolate 1");
      isolate.resume();
    });
    Timer(Duration(seconds: 20), () {
      print("Killing Isolate 1");
      isolate.kill();
    });
  }


  void isolate2(String arg) {
    Timer.periodic(
        Duration(seconds: 1), (timer) => print("Timer Running From Isolate 2"));
  }

  void isolate1(String arg) async {
    await FlutterIsolate.spawn(isolate2, "42");
    setState((){
      _isolatedValue = "42";
    });
    Timer.periodic(
        Duration(seconds: 1), (timer) => print("Timer Running From Isolate 1"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(_isolatedValue),
        ),

      ),
    );
  }
}
