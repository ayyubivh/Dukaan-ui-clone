import 'package:flutter/material.dart';

import '../common_widgets.dart/sizidbox.dart';
import '../common_widgets.dart/text.dart';

class Dukaan_features extends StatelessWidget {
  Dukaan_features({super.key});
  List<ListItem> items = [
    ListItem(
        title: 'Custom domain name',
        icon: Icons.language_rounded,
        subtitle:
            'Get Your own custom domain and buid your brand on the internet'),
    ListItem(
        title: 'Verified seller badge',
        icon: Icons.verified_outlined,
        subtitle:
            'Get green verified badge under your store name and build trust'),
    ListItem(
        title: 'Dukaan for pc',
        icon: Icons.computer,
        subtitle: 'Access all the exclusive premium features on Dukaan for PC'),
    ListItem(
        title: 'Priority support',
        icon: Icons.support_agent_rounded,
        subtitle:
            'Get your quetions resoloved with our priority Customers support')
  ];
  var divids = Divider(
    height: 2.0,
    thickness: 4.0,
    color: Colors.black12,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sizbox(myheight: 10, mywidth: 1),
        Container(
          child: texts(
              mystring: '     Features',
              mycolor: Colors.black,
              fontweight: FontWeight.w500,
              myfontsize: 21.0),
        ),
        Sizbox(myheight: 10, mywidth: 1),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Container(
                  height: 70.0,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 4, 110, 148), width: 2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    items[index].icon,
                    size: 35.0,
                    color: Color.fromARGB(255, 17, 151, 188),
                  ),
                ),
                title: Text(
                  items[index].title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  items[index].subtitle,
                  style: TextStyle(
                    letterSpacing: 0.3,
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
              ),
            );
          }),
        ),
        Sizbox(myheight: 18, mywidth: 2),
        divids,
        Sizbox(myheight: 18, mywidth: 2),
      ],
    );
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
