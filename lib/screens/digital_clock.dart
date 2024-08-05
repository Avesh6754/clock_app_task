import 'dart:async';

import 'package:flutter/material.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  Widget build(BuildContext context) {
    DateTime future= DateTime.now();
    Timer.periodic(Duration(seconds: 1), (timer) {
      future=DateTime.now();
    },);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg.jpg'),
            fit:
              BoxFit.cover
          )
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${future.hour} : ${future.minute} : ${future.second}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
