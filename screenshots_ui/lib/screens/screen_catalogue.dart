import 'package:flutter/material.dart';

import '../widgets/catalogue_screen/calolgue_products.dart';

import '../widgets/common_widgets.dart/text.dart';

class ScreenCatalogue extends StatelessWidget {
  const ScreenCatalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade800,
            actions: [Icon(Icons.search)],
            bottom: const TabBar(
              tabs: [
                Tab(
                    child: texts(
                        mystring: 'Products',
                        myfontsize: 18,
                        mycolor: Colors.white,
                        fontweight: FontWeight.w400)),
                Tab(
                    child: texts(
                        mystring: 'Catagories',
                        myfontsize: 18,
                        mycolor: Colors.white,
                        fontweight: FontWeight.w400)),
              ],
            ),
            title: const Text('catalogue'),
          ),
          body: ListView(
            children: [
              Container(
                  color: Color.fromARGB(96, 190, 187, 187),
                  child: Catalogue_products())
            ],
          )),
    );
  }
}
