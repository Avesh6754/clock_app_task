import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/global.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          future = DateTime.now();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('${background(future)}'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "${(future.hour % 12 == 0) ? 12.toString().padLeft(2, '0') : (future.hour % 12).toString().padLeft(2, '0')}:${future.minute.toString().padLeft(2, '0')}",
                  style: const TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Digital'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '${future.second.toString().padLeft(2, '0')}',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: -2,
                      fontFamily: 'Digital'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '${(future.hour < 12) ? 'AM' : "PM"}',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: -2,
                      fontFamily: 'Digital'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    '${days[future.weekday - 1]} ${future.day} ${month[future.month - 1]}',
                    style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Digital'))
              ],
            ),
            Spacer(
              flex: 4,
            )
          ],
        ),
      ),
    );
  }
}

var name = '0';

String background(DateTime future) {
  final hour = future.hour;
  if (hour >= 0 && hour < 6) {
    return 'assets/image/6.gif';
  } else if (hour >= 6 && hour < 9) {
    return 'assets/image/1.gif';
  } else if (hour >= 9 && hour < 12) {
    return 'assets/image/2.gif';
  } else if (hour >= 12 && hour < 16) {
    return 'assets/image/3.gif';
  } else if (hour >= 16 && hour < 19) {
    return 'assets/image/4.gif';
  } else {
    return 'assets/image/5.gif';
  }
}
