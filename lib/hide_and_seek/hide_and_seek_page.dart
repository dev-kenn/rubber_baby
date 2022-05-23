import 'package:flutter/material.dart';

class HideAndSeekPage extends StatefulWidget {
  @override
  _HideAndSeekPageState createState() => _HideAndSeekPageState();
}
class _HideAndSeekPageState extends State<HideAndSeekPage> {
  /*

  String playHideAndSeekTheLongVersion() {
    var counting = 0;
    for (var i = 1; i <= 1000000000; i++) {
      counting = i;
    }
    return '$counting! Ready or not, here I come!';
  }

  will block the app during its initialization unless you put it in a separate function that will run asynchronously


   */
  String str_playHideAndSeekTheLongVersion = "";
  String playHideAndSeekTheLongVersion() {
    var counting = 0;
    for (var i = 1; i <= 1000000000; i++) {
      counting = i;
    }
    return '$counting! Ready or not, here I come!';
  }


  @override
  void initState(){
        initVariable();
  }

  initVariable()async{
    var counting = 0;
    for (var i = 1; i <= 1000000000; i++) {
      counting = i;
    }
    setState((){
      str_playHideAndSeekTheLongVersion = '$counting! Ready or not, here I come!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(str_playHideAndSeekTheLongVersion),
              Text(playHideAndSeekTheLongVersion()),
            ],
          )
        ),

      ),
    );
  }
}


class CounterButton extends StatelessWidget {

  CounterButton({
    required this.label,
    required this.onPressed,
    required this.color
  });

  final String label;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: color,
          primary: Colors.white
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }

}


