import 'package:flutter/material.dart';

import '../common_widgets.dart/sizidbox.dart';
import '../common_widgets.dart/text.dart';

class List_payment extends StatelessWidget {
  List_payment({super.key});

  List Items = [
    {
      "image": "Assets/images/6.jpg",
      "tile": "order #1688068",
      "price": "799",
      "date": "Jul 12,02:06 PM"
    },
    {
      "image": "Assets/images/2.jpg",
      "tile": "order #1457741",
      "price": "397.4",
      "date": "Apr 11, 10:54 AM"
    },
    {
      "image": "Assets/images/3.webp",
      "tile": "order #1408896",
      "price": "699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/4.jpg",
      "tile": "order #1688068",
      "price": "799",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/5.webp",
      "tile": "order #1688068",
      "price": "799",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/6.jpg",
      "tile": "order #1688068",
      "price": "799",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/2.jpg",
      "tile": "order #1457741",
      "price": "397.4",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/3.webp",
      "tile": "order #1457741",
      "price": "397.4",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/4.jpg",
      "tile": "order #1457741",
      "price": "397.4",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/5.webp",
      "tile": "order #1457741",
      "price": "397.4",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/6.jpg",
      "tile": "order #1408896",
      "price": "699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/2.jpg",
      "tile": "order #1408896",
      "price": "699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/3.webp",
      "tile": "order #1408896",
      "price": "699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/4.jpg",
      "tile": "order #1408896",
      "price": "699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/5.webp",
      "tile": "order #1408896",
      "price": "699",
      "date": "Dec 12,02:06 PM"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Image.asset(Items[index]['image']),
              title: Text(Items[index]['tile']),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    Items[index]['price'],
                    style: TextStyle(
                        color: Colors.blue.shade700,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 14.0,
                      ),
                      Sizbox(myheight: 1, mywidth: 10),
                      texts(
                          mystring: 'Successful',
                          myfontsize: 16,
                          mycolor: Colors.black45,
                          fontweight: null),
                    ],
                  ),
                ],
              ),
              subtitle: Text(Items[index]['date']),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22),
              child: texts(
                  mystring: '₹1123.5 deposited to 5886020000138',
                  myfontsize: 12,
                  mycolor: Colors.black45,
                  fontweight: FontWeight.w400),
            )
          ],
        );
      },
      itemCount: Items.length,
    );
  }
}
