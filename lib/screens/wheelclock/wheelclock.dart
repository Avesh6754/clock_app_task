import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class wheel extends StatefulWidget {
  const wheel({super.key});

  @override
  State<wheel> createState() => _wheelState();
}

class _wheelState extends State<wheel> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child:Column(


          children: [

            GestureDetector(
              onTap: () {

              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  border: Border.all(color: Colors.grey,width: 0.5),

                ),
                child: Icon(Icons.square_rounded,color: Colors.grey,),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
