import 'package:flutter/material.dart';

import '../common_widgets.dart/text.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({super.key});
  Widget chipbutton(
      {required String myname,
      Color? mycolor,
      Color? mycolors,
      required double myfontsize}) {
    return Chip(
      backgroundColor: mycolors,
      label: Text(
        myname,
        style: TextStyle(color: mycolor, fontSize: myfontsize),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 13.0),
            child: texts(
              myfontsize: 21.0,
              mystring: 'Transaction',
              mycolor: Colors.black,
              fontweight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              chipbutton(myname: '   On hold    ', myfontsize: 16.0),
              chipbutton(
                  myfontsize: 16.0,
                  myname: '     Payouts (15)  ',
                  mycolor: Colors.white,
                  mycolors: Colors.blue.shade700),
              chipbutton(myname: '     Refund      ', myfontsize: 16.0)
            ],
          ),
        ],
      ),
    );
  }
}
