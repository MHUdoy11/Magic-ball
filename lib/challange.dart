import 'package:flutter/material.dart';
import 'dart:math';
class Pool extends StatefulWidget {
  const Pool({Key? key}) : super(key: key);

  @override
  _PoolState createState() => _PoolState();
}

class _PoolState extends State<Pool> {
  int ball=1;
  void press(){
    setState(() {
      ball= Random().nextInt(5)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("let's play",

        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('click and enojoy',
            style: TextStyle(
              fontSize: 40,
            ),

          ),
          Expanded(child:
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              press();
            },
            child:Image.asset('images/ball$ball.png',

            ),
          ),
          ),
        ],
      ),

    );
  }
}
