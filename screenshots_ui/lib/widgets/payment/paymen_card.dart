import 'package:flutter/material.dart';

import '../common_widgets.dart/flatbutton.dart';
import '../common_widgets.dart/sizidbox.dart';
import '../common_widgets.dart/text.dart';

Widget paymentcard() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 232.0,
      width: 400,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Transaction Limit',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "A free limit up to which you will receive the online payments directly in your",
                  style: TextStyle(
                      fontSize: 17.9,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      letterSpacing: 0.5),
                ),
              ),
              const Sizbox(myheight: 15, mywidth: 0),
              // LinearPercentIndicator(
              //   animation: true,
              //   animationDuration: 1000,
              //   lineHeight: 10.0,
              //   percent: 40 / 100,
              //   barRadius: Radius.circular(16),
              //   progressColor: Colors.blue.shade800,
              //   backgroundColor: Colors.grey.shade300,
              // ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: texts(
                    fontweight: null,
                    mystring: '36,668 left out of 50000',
                    myfontsize: 18.0,
                    mycolor: Colors.black45),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 38.0,
                  width: 150,
                  child: MyFlatbuttons(
                      myfontsize: 18,
                      mytext: 'increase limit',
                      myrdssize: 5,
                      myforegroundcolor: Colors.white,
                      mybackgoundcolor: Colors.blue.shade800),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
