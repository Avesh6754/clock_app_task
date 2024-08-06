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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/vertical-shot-beautiful-starry-sky.jpg'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "${(future.hour) > 12 ? (future.hour % 12).toString().padLeft(2, '0'):(future.hour).toString().padLeft(2, '0')} : ${future.minute.toString().padLeft(2,'0')} : ${future.second.toString().padLeft(2,'0')}",
                  style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Digital'),
                ),
                SizedBox(width: 10,),
                Text('${name=(future.hour>12)?'PM':"AM"}',style: TextStyle( fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: -2,
                    fontFamily: 'Digital'),),
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
Spacer(flex: 4,)
          ],
        ),
      ),

    );
  }
}

 var name='0';