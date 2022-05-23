import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'dart:math';


class SocketPage extends StatefulWidget {
  @override
  _SocketPageState createState() => _SocketPageState();
}
class _SocketPageState extends State<SocketPage> {
  @override
  void initState() {
    super.initState();
  }

  // List<String> _fishOptions = ["salmon", "trout"];
  // List<String> _streamReturn = [];
  int _salmonCount = 0;


  // Stream<int> generateFish = (() async* {
  //
  //   await Future<void>.delayed(Duration(seconds: 2));
  //
  //
  //   for (int i = 1; i <= 100; i++) {
  //     int returnMe = Random().nextInt(["salmon", "trout"].length);
  //     yield returnMe;
  //   }
  // })();

  Stream<int> generateNumbers = (() async* {
    await Future<void>.delayed(Duration(seconds: 2));

    for (int i = 1; i <= 100; i++) {
      await Future<void>.delayed(Duration(seconds: 1));
      int returnMe = Random().nextInt(["salmon", "trout"].length);

      yield returnMe;
    }
  })();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StreamBuilder<int>(
          stream: generateNumbers,
          builder: (
              BuildContext context,
              AsyncSnapshot<int> snapshot,
              ) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.active
                || snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text('Error');
              } else if (snapshot.hasData) {
                if(snapshot.data == 0){
                  _salmonCount++;
                } else {
                  _salmonCount = 0;
                }
                return Text(
                    // snapshot.data!.toString(),
                    "${_salmonCount >=5 ? "Sushi" : ["salmon", "trout"][snapshot.data!]}",
                    style: const TextStyle(color: Colors.red, fontSize: 40)
                );
              } else {
                return const Text('Empty data');
              }
            } else {
              return Text('State: ${snapshot.connectionState}');
            }
          },
        ),

      ),
    );
  }
}