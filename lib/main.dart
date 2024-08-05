import 'package:clock_app_task/screens/IconPages.dart';
import 'package:clock_app_task/screens/digital_clock.dart';
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
      },
    );
  }
}
