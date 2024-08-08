import 'package:flutter/material.dart';

import '../../utils/global.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/8.jpg'), fit: BoxFit.cover),
          ),
          alignment: Alignment.center,
          child: Stack(alignment: Alignment.center, children: [
            Text(
              "${hour.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}",
              style: const TextStyle(
                  color: Colors.white,

                  fontSize: 50,
                  height: -5
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height:50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: TextField(
                    controller: TextEditingController(
                      text: 'sks',

                    ),
                    decoration: InputDecoration(

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              stop=true;
                            });
                          },
                          child: const Text(
                            'Start',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              stop=false;
                            });
                          },
                          child: const Text(
                            'Pause',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              stop=false;
                              second=0;
                              minutes=0;
                              hour=0;
                            });
                          },
                          child: const Text(
                            'Reset',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ]),
                ),
              ],
            )
          ])),
    );
  }
}
