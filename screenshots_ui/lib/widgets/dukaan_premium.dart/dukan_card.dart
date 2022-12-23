import 'package:flutter/material.dart';

import '../common_widgets.dart/sizidbox.dart';
import '../common_widgets.dart/text.dart';

@override
class dukaan_card extends StatelessWidget {
  const dukaan_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.blue.shade800,
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: -120,
              child: Container(
                height: 200.0,
                width: 365.0,
                child: Card(
                  // color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Column(
                      children: [
                        Sizbox(myheight: 10, mywidth: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue.shade800,
                              child: Icon(
                                Icons.local_mall_rounded,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: const Text(
                                'dukaan',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 35),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 90.0,
                          ),
                          child: const Text(
                            'PREMIUM',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blue),
                          ),
                        ),
                        Text(
                          'Get Dukaan Premium For \n           just ₹4,999/ year',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        Sizbox(myheight: 7, mywidth: 4),
                        texts(
                            mystring:
                                'All the advanced feature for scaling your \n                              business',
                            myfontsize: 15.0,
                            mycolor: Colors.black54,
                            fontweight: FontWeight.normal),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
