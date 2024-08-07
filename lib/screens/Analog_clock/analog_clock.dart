import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:animated_analog_clock/animated_analog_clock.dart';
import '../../utils/global.dart';
import '../digital_clock.dart';

class AnalogClock extends StatefulWidget {
  const AnalogClock({super.key});

  @override
  State<AnalogClock> createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        future = DateTime.now();
      });
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('${background(future)}'), fit: BoxFit.cover),),
        child: Stack(
          alignment: Alignment.center,
          children: [

          Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2)
          ),
                  ),

        Transform.rotate(
          angle: (future.second * 6) * pi / 180,
          child: VerticalDivider(
            color: Colors.red, thickness: 2,
            indent: 360,
            endIndent: 460,
          ),
        ),
        Transform.rotate(
          angle: (future.minute * 6) * pi / 180,
          child: VerticalDivider(
            color: Colors.white, thickness: 3,
            indent: 380,
            endIndent: 460,
          ),
        ),
        Transform.rotate(
          angle: (future.hour * 30) * pi / 180,
          child: VerticalDivider(
            color: Colors.white, thickness: 4,
            indent: 420,
            endIndent: 460,
          ),
        ),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38
          ),
        ),
        ],
      ),
    ),);
  }
}
