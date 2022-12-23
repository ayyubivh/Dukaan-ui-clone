import 'package:flutter/material.dart';

class list_additional extends StatelessWidget {
  const list_additional({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      'Share Dukaan App ',
      'Change Language',
      'Whats App Chat Support',
      'Piracy Plolicy',
      'Rate Us',
      'Sign Out',
    ];

    List<Icon> leadingicons = [
      const Icon(Icons.share),
      const Icon(Icons.chat),
      const Icon(Icons.whatsapp),
      const Icon(Icons.lock),
      const Icon(Icons.star),
      const Icon(Icons.exit_to_app),
    ];

    List<Icon> trailingcons = [
      const Icon(Icons.arrow_forward_ios_outlined),
      const Icon(Icons.arrow_forward_ios_outlined),
      const Icon(
        Icons.toggle_on_rounded,
        size: 40.0,
        color: Colors.blue,
      ),
      const Icon(null),
      const Icon(null),
      const Icon(null),
    ];

    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      itemCount: 6,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          leading: leadingicons[index],
          trailing: trailingcons[index],
        );
      },
    );
  }
}

class text_widget extends StatelessWidget {
  const text_widget({
    Key? key,
    required this.mytext,
    required this.mycolor,
  }) : super(key: key);

  final String mytext;
  final Color mycolor;
  @override
  Widget build(BuildContext context) {
    return Text(
      mytext,
      style: TextStyle(color: mycolor),
    );
  }
}

//*********************************************************************************** */
