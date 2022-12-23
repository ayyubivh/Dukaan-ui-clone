import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sizbox extends StatelessWidget {
  final double myheight;
  final double mywidth;
  const Sizbox({super.key, required this.myheight, required this.mywidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: myheight,
      width: mywidth,
    );
  }
}
