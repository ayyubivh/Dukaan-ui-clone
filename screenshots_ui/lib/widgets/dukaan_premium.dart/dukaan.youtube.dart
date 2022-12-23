import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../common_widgets.dart/sizidbox.dart';
import '../common_widgets.dart/text.dart';

class dukaan_youtube extends StatelessWidget {
  dukaan_youtube({super.key});
  var divids = Divider(
    height: 2.0,
    thickness: 4.0,
    color: Colors.black12,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
          ),
          child: texts(
              mystring: ' What is Dukaan Premium?',
              mycolor: Colors.black,
              fontweight: FontWeight.w500,
              myfontsize: 21.0),
        ),
        Padding(
          padding: const EdgeInsets.all(22),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset('Assets/images/dukan.png'),
          ),
        ),
        Sizbox(myheight: 5, mywidth: 1),
        divids,
        Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: texts(
                mystring: 'Frequently asked questions',
                mycolor: Colors.black,
                fontweight: FontWeight.w500,
                myfontsize: 21.0),
          ),
        ),
        Sizbox(myheight: 20, mywidth: 2),
      ],
    );
  }
}
