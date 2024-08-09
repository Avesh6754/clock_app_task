import 'package:clock_app_task/screens/Analog_clock/analog_clock.dart';
import 'package:clock_app_task/screens/Timer/timer.dart';
import 'package:clock_app_task/screens/digital_clock.dart';
import 'package:clock_app_task/screens/strap_watch/strap_watch.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>DigitalClock(),
        '/analog':(context)=>AnalogClock(),
        '/strap':(context)=>StrapWatch(),
        '/timepage':(context)=>Timerpage(),
      },
    );
  }
}
