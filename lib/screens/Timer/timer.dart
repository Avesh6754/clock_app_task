import 'package:flutter/material.dart';
import 'dart:async';
import '../../utils/global.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

final TextEditingController myminutes = TextEditingController();
final TextEditingController myhour = TextEditingController();


class _TimerState extends State<Timer> {
  void timerclock()async
  {
    await Future.delayed(
      Duration(seconds: 1),
          () {
        setState(() {
          if(stop)
          {
            second--;
            if (second > 59) {
              minutes--;
              second = 0;
              if (minutes > 59) {
                hour--;
                minutes = 0;
                second = 0;
              }
            }
          }

        });
      },
    );
  }
  @override
  // void dispose() {
  //   // TODO: implement dispose
  //   myhour.dispose();
  //   myminutes.dispose();
  //   super.dispose();
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timerclock();

  }
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
                  color: Colors.white, fontSize: 50, height: -5),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: myhour,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Hour',
                          hintText: 'Enter',

                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: myminutes,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Minutes',
                          hintText: 'Enter',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton.filled(style: ButtonStyle(fixedSize: WidgetStateProperty.all(Size(50, 50))),onPressed: () {
                    setState(() {
                      hour=int.parse(myhour.text);
                      minutes=int.parse(myminutes.text);
                    });
                }, icon: Icon(Icons.add)),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              stop = true;
                            });
                          },
                          child: const Text(
                            'Start',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              stop = false;
                            });
                          },
                          child: const Text(
                            'Pause',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              stop = false;
                              second = 0;
                              minutes = 0;
                              hour = 0;
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
