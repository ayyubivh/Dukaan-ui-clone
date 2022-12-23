import 'package:flutter/material.dart';

import '../common_widgets.dart/flatbutton.dart';
import '../common_widgets.dart/sizidbox.dart';
import '../common_widgets.dart/text.dart';

class orders_product extends StatelessWidget {
  orders_product({super.key});
//productlist
  Widget products_list() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          texts(
            mystring: '1  ITEM',
            fontweight: FontWeight.w700,
            mycolor: Colors.black54,
            myfontsize: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.receipt,
                color: Colors.blue.shade800,
                size: 28,
              ),
              Sizbox(myheight: 1, mywidth: 12),
              texts(
                  mystring: 'RECEIPT',
                  myfontsize: 20.0,
                  mycolor: Colors.blue.shade700,
                  fontweight: FontWeight.w500),
            ],
          )
        ],
      ),
    );
  }

//Picture_area
  Widget Picure_area() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 28),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.259))),
            height: 70,
            width: 80,
            child: Image.asset('Assets/images/6.jpg'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            texts(
                mystring: 'Explore | Men | Navy Blue',
                myfontsize: 21.0,
                mycolor: Colors.black,
                fontweight: FontWeight.w400),
            texts(
                mystring: '1 piece \n Size: XL',
                myfontsize: 18,
                mycolor: Colors.black54,
                fontweight: FontWeight.normal),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blue.shade800)),
                  height: 32,
                  width: 38.0,
                  child: MyFlatbuttons(
                      mytext: '1',
                      myrdssize: 1,
                      myforegroundcolor: Colors.blue.shade600,
                      mybackgoundcolor: Color.fromARGB(255, 226, 231, 236),
                      myfontsize: 22.0),
                ),
                Sizbox(myheight: 2, mywidth: 15),
                texts(
                    mystring: 'x  ₹799                      ₹799',
                    myfontsize: 20,
                    mycolor: Colors.black,
                    fontweight: FontWeight.normal),
              ],
            ),
          ],
        ),
      ],
    );
  }

  //price_area/
  Widget price_area() {
    return Column(
      children: [
        texts(
            mystring:
                'item Total                                         ₹799 ',
            myfontsize: 22,
            mycolor: Colors.black,
            fontweight: FontWeight.normal),
        Sizbox(myheight: 2, mywidth: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            texts(
                mystring: 'Delivery ',
                myfontsize: 22,
                mycolor: Colors.black87,
                fontweight: FontWeight.normal),
            texts(
                mystring: 'FREE',
                myfontsize: 22,
                mycolor: Colors.green,
                fontweight: FontWeight.normal),
          ],
        ),
        Sizbox(myheight: 4, mywidth: 2),
        texts(
            mystring: 'Grand Total                                      ₹799 ',
            myfontsize: 22,
            mycolor: Colors.black,
            fontweight: FontWeight.w500),
      ],
    );
  }

//address_area
  Widget address_area() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            texts(
                mystring: 'CUSTOMER DETAILS',
                myfontsize: 20,
                mycolor: Colors.black54,
                fontweight: FontWeight.w500),
            Row(
              children: [
                Icon(
                  Icons.share_outlined,
                  color: Colors.blue.shade700,
                  size: 29,
                ),
                Sizbox(myheight: 12, mywidth: 2),
                texts(
                    mystring: '  SHARE',
                    myfontsize: 20,
                    mycolor: Colors.blue.shade700,
                    fontweight: FontWeight.w500),
              ],
            ),
          ],
        ),
        Sizbox(myheight: 12, mywidth: 42),
        texts(
            mystring: 'Deepa ',
            myfontsize: 20,
            mycolor: Colors.black,
            fontweight: FontWeight.w500),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            texts(
                mystring: '+91-7829000484 ',
                myfontsize: 20,
                mycolor: Colors.black54,
                fontweight: FontWeight.w500),
            Row(
              children: [
                Icon(
                  Icons.whatsapp_outlined,
                  color: Colors.blue.shade700,
                  size: 34,
                ),
                Sizbox(myheight: 1, mywidth: 13),
                Icon(
                  Icons.whatsapp_outlined,
                  color: Colors.green.shade600,
                  size: 34,
                ),
              ],
            ),
          ],
        ),
        Sizbox(myheight: 6, mywidth: 1),
        texts(
            mystring: 'Address ',
            myfontsize: 20,
            mycolor: Colors.black,
            fontweight: FontWeight.w500),
        texts(
            mystring: 'D 1101 Charted Beverly\nHills,Subramanyapura P.0',
            myfontsize: 20,
            mycolor: Colors.black54,
            fontweight: FontWeight.w500),
        Sizbox(myheight: 12, mywidth: 1),
        texts(
            mystring: 'City                              Pincode ',
            myfontsize: 20,
            mycolor: Colors.black,
            fontweight: FontWeight.w500),
        texts(
            mystring: 'Bamgolore                    560061',
            myfontsize: 20,
            mycolor: Colors.black54,
            fontweight: FontWeight.w500),
        Sizbox(myheight: 8, mywidth: 1),
        texts(
            mystring: 'Payment',
            myfontsize: 20,
            mycolor: Colors.black,
            fontweight: FontWeight.w500),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            texts(
                mystring: 'Online',
                myfontsize: 20,
                mycolor: Colors.black54,
                fontweight: FontWeight.w500),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.259))),
              height: 28.0,
              width: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 19.0, top: 4, bottom: 2),
                child: texts(
                    mystring: 'PAID',
                    fontweight: FontWeight.w700,
                    mycolor: Color.fromARGB(255, 17, 199, 23),
                    myfontsize: 17),
              ),
            ),
          ],
        ),
      ],
    );
  }

//additional_informatio
  Widget additonal_information() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        texts(
            mystring: 'ADDITIONAL INFORMATION',
            myfontsize: 20,
            mycolor: Colors.black54,
            fontweight: FontWeight.w500),
        Sizbox(myheight: 8, mywidth: 1),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            texts(
                mystring: 'State',
                myfontsize: 20,
                mycolor: Colors.black,
                fontweight: FontWeight.w500),
            texts(
                mystring: 'Karnataka',
                myfontsize: 20,
                mycolor: Colors.black54,
                fontweight: FontWeight.w500),
            Sizbox(myheight: 8, mywidth: 1),
            texts(
                mystring: 'Email',
                myfontsize: 20,
                mycolor: Colors.black,
                fontweight: FontWeight.w500),
            texts(
                mystring: 'greencicequa@gmail.com',
                myfontsize: 20,
                mycolor: Colors.black54,
                fontweight: FontWeight.w500),
            Sizbox(myheight: 20, mywidth: 1),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.blue.shade900)),
          width: 500,
          height: 45,
          child: MyFlatbuttons(
              mytext: 'Share receipt',
              myrdssize: 5,
              myforegroundcolor: Colors.blue.shade800,
              mybackgoundcolor: Colors.white,
              myfontsize: 22),
        ),
        Sizbox(myheight: 20, mywidth: 1),
      ],
    );
  }
  //**************** */

  var divids = Divider(height: 2.0, thickness: 3.0, color: Colors.black12);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              texts(
                mystring: 'May 31 05:42 PM',
                myfontsize: 20,
                fontweight: FontWeight.normal,
                mycolor: Colors.black,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.blue.shade800,
                  ),
                  Sizbox(myheight: 1, mywidth: 15),
                  texts(
                      mystring: 'Delivered',
                      myfontsize: 22,
                      mycolor: Colors.grey,
                      fontweight: FontWeight.w500),
                ],
              ),
            ],
          ),
          Sizbox(myheight: 13, mywidth: 2),
          divids,
          Sizbox(myheight: 15, mywidth: 1),
          products_list(),
          Sizbox(myheight: 15, mywidth: 1),
          Picure_area(),
          Sizbox(myheight: 25, mywidth: 2),
          divids,
          Sizbox(myheight: 15, mywidth: 1),
          price_area(),
          Sizbox(myheight: 12, mywidth: 2),
          divids,
          Sizbox(myheight: 13, mywidth: 2),
          address_area(),
          Sizbox(myheight: 12, mywidth: 2),
          divids,
          Sizbox(myheight: 14, mywidth: 2),
          additonal_information()
        ],
      ),
    );
  }
}
