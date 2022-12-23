import 'dart:ui';

import 'package:flutter/material.dart';

import '../common_widgets.dart/sizidbox.dart';
import '../common_widgets.dart/text.dart';

class Catalogue_products extends StatefulWidget {
  Catalogue_products({super.key});

  @override
  State<Catalogue_products> createState() => _Catalogue_productsState();
}

class _Catalogue_productsState extends State<Catalogue_products> {
  List Items = [
    {
      "image": "Assets/images/6.jpg",
      "tile": "LEVIS | Men....        ",
      "price": "₹799",
      "date": "Jul 12,02:06 PM"
    },
    {
      "image": "Assets/images/2.jpg",
      "tile": "US POLO | Men....   ",
      "price": "₹399",
      "date": "Apr 11, 10:54 AM"
    },
    {
      "image": "Assets/images/3.webp",
      "tile": "Carl Book | Pack... ",
      "price": "₹699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/4.jpg",
      "tile": "Nike | Men...            ",
      "price": "₹999",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/6.jpg",
      "tile": "LEVIS | Men....     ",
      "price": "₹799",
      "date": "Jul 12,02:06 PM"
    },
    {
      "image": "Assets/images/2.jpg",
      "tile": "US POLO | Men....",
      "price": "₹399",
      "date": "Apr 11, 10:54 AM"
    },
    {
      "image": "Assets/images/3.webp",
      "tile": "Carl Book | Pack...",
      "price": "₹699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/4.jpg",
      "tile": "Nike | Men...           ",
      "price": "₹999",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/6.jpg",
      "tile": "LEVIS | Men....     ",
      "price": "₹799",
      "date": "Jul 12,02:06 PM"
    },
    {
      "image": "Assets/images/2.jpg",
      "tile": "US POLO | Men....",
      "price": "₹399",
      "date": "Apr 11, 10:54 AM"
    },
    {
      "image": "Assets/images/3.webp",
      "tile": "Carl Book | Pack...",
      "price": "₹699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/4.jpg",
      "tile": "Nike | Men...           ",
      "price": "₹999",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/6.jpg",
      "tile": "LEVIS | Men....     ",
      "price": "₹799",
      "date": "Jul 12,02:06 PM"
    },
    {
      "image": "Assets/images/2.jpg",
      "tile": "US POLO | Men....",
      "price": "₹399",
      "date": "Apr 11, 10:54 AM"
    },
    {
      "image": "Assets/images/3.webp",
      "tile": "Carl Book | Pack...",
      "price": "₹699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/4.jpg",
      "tile": "Nike | Men...           ",
      "price": "₹999",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/6.jpg",
      "tile": "LEVIS | Men....     ",
      "price": "₹799",
      "date": "Jul 12,02:06 PM"
    },
    {
      "image": "Assets/images/2.jpg",
      "tile": "US POLO | Men....",
      "price": "₹399",
      "date": "Apr 11, 10:54 AM"
    },
    {
      "image": "Assets/images/3.webp",
      "tile": "Carl Book | Pack...",
      "price": "₹699",
      "date": "Dec 12,02:06 PM"
    },
    {
      "image": "Assets/images/4.jpg",
      "tile": "Nike | Men...           ",
      "price": "₹999",
      "date": "Dec 12,02:06 PM"
    },
  ];

  bool isSwitched = false;

  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 6, right: 6, top: 6),
            child: Card(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Sizbox(myheight: 1, mywidth: 15),
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(Items[index]['image'])),
                    Sizbox(myheight: 0, mywidth: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text(
                                Items[index]['tile'],
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                            Sizbox(myheight: 1, mywidth: 39.0),
                          ],
                        ),
                        Sizbox(myheight: 6, mywidth: 1),
                        texts(
                            mystring: '1 piece',
                            myfontsize: 16,
                            mycolor: Colors.black54,
                            fontweight: FontWeight.w500),
                        Sizbox(myheight: 6, mywidth: 0),
                        Text(
                          Items[index]['price'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        texts(
                            mystring: 'in stock',
                            myfontsize: 17,
                            mycolor: Colors.green,
                            fontweight: FontWeight.w500),
                        Sizbox(myheight: 9, mywidth: 0),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.more_vert),
                        Switch(value: isSwitched, onChanged: toggleSwitch),
                      ],
                    ),
                  ],
                ),
                Sizbox(myheight: 12.0, mywidth: 0),
                Divider(
                  color: Colors.black26,
                  height: 0,
                  thickness: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.share_outlined,
                        size: 30,
                      ),
                      texts(
                          mystring: '   Share Product',
                          myfontsize: 20,
                          mycolor: Colors.black,
                          fontweight: FontWeight.w400),
                    ],
                  ),
                ),
              ]),
            ),
          );
        }),
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.transparent,
          );
        },
        itemCount: 15);
  }
}

class ListItem {
  String subtitle;
  String title;
  //bool isSelected;
  IconData icon;
  ListItem(
      {required this.title,
      //  required this.isSelected,
      required this.icon,
      required this.subtitle});
}
