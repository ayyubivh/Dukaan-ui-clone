import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
    required this.myAppBarTitle,
    required this.myAppBarIcon,
  }) : super(key: key);

  final String myAppBarTitle;
  final Icon myAppBarIcon;

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue.shade800,
      title: Text(myAppBarTitle),
      actions: [
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: myAppBarIcon,
        )
      ],
      centerTitle: true,
    );
  }
}
