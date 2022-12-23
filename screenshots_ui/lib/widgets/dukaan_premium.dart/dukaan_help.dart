import 'package:flutter/material.dart';

import '../common_widgets.dart/flatbutton.dart';
import '../common_widgets.dart/sizidbox.dart';
import '../common_widgets.dart/text.dart';

class dukaan_help extends StatelessWidget {
  dukaan_help({super.key});
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
        Container(
          child: divids,
        ),
        Sizbox(myheight: 18, mywidth: 1),
        texts(
            mystring: '    Need help? Get in touch',
            mycolor: Colors.black,
            fontweight: FontWeight.w500,
            myfontsize: 21.0),
        Sizbox(myheight: 18, mywidth: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26)),
              height: 110,
              width: 180,
              child: Icon(
                Icons.chat_bubble_outline_outlined,
                size: 50.0,
                color: Colors.black54,
              ),
            ),
            Container(
              height: 110,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Icon(
                Icons.call_outlined,
                size: 50.0,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Sizbox(myheight: 20, mywidth: 1),
        divids,
        Sizbox(myheight: 20, mywidth: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            texts(
                mystring: '    Select Domain',
                myfontsize: 21.0,
                mycolor: Colors.blue.shade700,
                fontweight: FontWeight.w600),
            Sizbox(myheight: 20, mywidth: 1),
            MyFlatbuttons(
                mytext: '         Get Premium         ',
                myrdssize: 10,
                myforegroundcolor: Colors.white,
                mybackgoundcolor: Colors.blue.shade800,
                myfontsize: 19),
          ],
        ),
        Sizbox(myheight: 20, mywidth: 1),
      ],
    );
  }
}
