import 'dart:async';
import 'package:animated_icon/animated_icon.dart';
import 'package:clock_app_task/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Timerpage extends StatefulWidget {
  const Timerpage({super.key});

  @override
  State<Timerpage> createState() => _TimerpageState();
}

class _TimerpageState extends State<Timerpage>
{
  int  _currenthour=0;
  int  _currentminutes=0;
  int  _currentsecond=0;
  bool isplay=true;
  void strapwatchlogic() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          if(secondtimer!=0 || hourtimer!=0 || minutestimer!=0)
            {
              if (stoptimer) {
                secondtimer--;
                if (secondtimer < 0 ) {
                  minutestimer--;
                  secondtimer = 59;
                  if (minutestimer < 0) {
                    hourtimer--;
                    minutestimer = 59;
                    secondtimer = 59;
                  }
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
    strapwatchlogic();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black
            // image: DecorationImage(
            //     image: AssetImage('assets/image/8.jpg'), fit: BoxFit.cover),
          ),
          alignment: Alignment.center,
          child: Stack(alignment: Alignment.center, children: [
            Text(
              "${hourtimer.toString().padLeft(2, '0')}:${minutestimer.toString().padLeft(2, '0')}:${secondtimer.toString().padLeft(2, '0')}",
              style: const TextStyle(
                  color: Colors.white, fontSize: 50, height: -5),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(flex: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.symmetric(vertical: BorderSide(color: Colors.grey,width: 0.2)),
                      ),
                      child: NumberPicker(
                        axis: Axis.vertical,
                        itemHeight: 45,
                        itemWidth: 45.0,
                        step: 1,

                        selectedTextStyle: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                        itemCount: 3,
                        value: _currenthour,
                        minValue: 0,
                        maxValue: 99,
                        onChanged: (v) {
                          setState(() {
                            _currenthour = v;
                          });
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.symmetric(vertical: BorderSide(color: Colors.grey,width: 0.2)),
                      ),
                      child: NumberPicker(
                        axis: Axis.vertical,
                        itemHeight: 45,
                        itemWidth: 45.0,
                        step: 1,
                        selectedTextStyle: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                        itemCount: 3,
                        value: _currentminutes,
                        minValue: 0,
                        maxValue: 59,
                        onChanged: (v) {
                          setState(() {
                            _currentminutes = v;
                          });
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.symmetric(vertical: BorderSide(color: Colors.grey,width: 0.2)),
                      ),
                      child: NumberPicker(
                        axis: Axis.vertical,
                        itemHeight: 45,
                        itemWidth: 45.0,
                        step: 1,
                        selectedTextStyle: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                        itemCount: 3,
                        value: _currentsecond,
                        minValue: 0,
                        maxValue: 59,
                        onChanged: (v) {
                          setState(() {
                            _currentsecond = v;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Spacer(),
                ElevatedButton(onPressed: () {
                  setState(() {
                    isplay=!isplay;
                    (isplay==false)?stoptimer=false:stoptimer=true;
                  });
                }, child: Icon((isplay==false) ? Icons.play_arrow : Icons.pause))

              ],
            )
          ])),
    );
  }
}


