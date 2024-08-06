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
    DateTime future = DateTime.now();
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          future = DateTime.now();
        });
      },
    );
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/vertical-shot-beautiful-starry-sky.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${(future.hour) > 12 ? (future.hour % 12).toString().padLeft(2, '0') : (future.hour).toString().padLeft(2, '0')} : ${future.minute} : ${future.second}",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Gupter'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    '${days[future.weekday - 1]}  ${future.day} ${month[future.month - 1]}',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Gupter'))
              ],
            ),

          ],
        ),
      ),

    );
  }
}

List days = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];
List month = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

