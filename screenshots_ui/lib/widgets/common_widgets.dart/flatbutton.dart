import 'package:flutter/material.dart';

class MyFlatbuttons extends StatelessWidget {
  final String mytext;
  final double myrdssize;
  final Color myforegroundcolor;
  final Color mybackgoundcolor;
  final double myfontsize;
  MyFlatbuttons(
      {super.key,
      required this.mytext,
      required this.myrdssize,
      required this.myforegroundcolor,
      required this.mybackgoundcolor,
      required this.myfontsize});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(myforegroundcolor),
          backgroundColor: MaterialStateProperty.all<Color>(mybackgoundcolor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(myrdssize),
            //  side: BorderSide(color: Colors.red)
          ))),
      onPressed: () {},
      child: Text(
        mytext,
        style: TextStyle(fontSize: myfontsize),
      ),
    );
  }
}
