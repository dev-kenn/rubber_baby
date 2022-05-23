import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}
class _OrderPageState extends State<OrderPage> {
  bool isShowing = true;
  int _blueValue = 0;
  int _redValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: (Text('Delete blue')),
                  onPressed: () {
                    setState(() {
                      isShowing = false;
                    });
                  },
                ),
                if (isShowing) CounterButton(
                  color: Colors.blue,
                  onPressed: (){
                    setState((){
                      _blueValue++;
                    });
                  },
                  label: "$_blueValue",
                ),
                CounterButton(
                  color: Colors.red,
                  onPressed: (){
                    setState((){
                      _redValue++;
                    });
                  },
                  label: "$_redValue",
                ),
              ]),
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