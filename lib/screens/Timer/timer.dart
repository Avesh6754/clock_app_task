import 'dart:async';

import 'package:clock_app_task/utils/global.dart';
import 'package:flutter/material.dart';

class Timerpage extends StatefulWidget {
  const Timerpage({super.key});

  @override
  State<Timerpage> createState() => _TimerpageState();
}

class _TimerpageState extends State<Timerpage> {
  void timewatchlogic() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          if (stoptimer) {
            secondtimer--;
            if (secondtimer < 0) {
              minutestimer--;
              secondtimer = 59;
              if (minutestimer < 0) {
                hourtimer--;
                minutestimer = 59;
                secondtimer = 59;
              }
            }
          }
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timewatchlogic();
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
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: myhour,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 18,color: Colors.white),
                        decoration: const InputDecoration(

                          border: OutlineInputBorder(),
                          labelText: 'Hour',
                          labelStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),

                          hintText: 'Enter',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: myminutes,
                        style: TextStyle(fontSize: 18,color: Colors.white),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Minutes',
                          labelStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                          hintText: 'Enter',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: mysecond,
                        style: TextStyle(fontSize: 18,color: Colors.white),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Second',
                          labelStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                          hintText: 'Enter',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
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
                              stoptimer = true;
                              secondtimer=int.parse(mysecond.text);
                              minutestimer=int.parse(myminutes.text);
                              hourtimer=int.parse(myhour.text);
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
                              stoptimer = false;
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
                              stoptimer = false;
                              secondtimer = 0;
                              minutestimer = 0;
                              hourtimer = 0;
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
