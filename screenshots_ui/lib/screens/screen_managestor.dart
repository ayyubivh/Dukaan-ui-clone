import 'package:flutter/material.dart';

import '../widgets/common_widgets.dart/custom_appbar.dart';
import '../widgets/managestore_screen/card_store.dart';

class ScreenManagestore extends StatefulWidget {
  ScreenManagestore({super.key});

  @override
  State<ScreenManagestore> createState() => _ScreenManagestoreState();
}

class _ScreenManagestoreState extends State<ScreenManagestore> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 42.0,
            ),
            label: 'Home',
            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_outlined,
              size: 42,
            ),
            label: 'Orders',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps_outlined,
              size: 42.0,
            ),
            label: 'Products',
            //  backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.layers_rounded,
              size: 42.0,
            ),
            label: 'Manage',
            //  backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 42.0,
            ),
            label: 'Accout',
            //  backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blue.shade800,
        onTap: _onItemTapped,
      ),
      appBar: const MyAppBar(
        myAppBarTitle: 'Manage Store',
        myAppBarIcon: Icon(null),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: GridView.count(
          childAspectRatio: 1.1,
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 2,
          children: [
            const StoreCard(
              newicon: Icon(null),
              myicons: Icon(
                Icons.volume_up,
                size: 37,
                color: Colors.white,
              ),
              mytext: 'Marketing Designs',
              mycolor: Colors.green,
            ),
            const StoreCard(
              newicon: Icon(null),
              mycolor: Colors.orange,
              myicons: Icon(
                Icons.currency_rupee,
                size: 37,
                color: Colors.white,
              ),
              mytext: 'Online Payments',
            ),
            StoreCard(
              newicon: Icon(null),
              myicons: const Icon(
                Icons.discount_outlined,
                color: Colors.white,
                size: 37,
              ),
              mytext: 'Discout Coupon',
              mycolor: Colors.orange.shade300,
            ),
            StoreCard(
              newicon: const Icon(null),
              myicons: const Icon(
                Icons.group,
                color: Colors.white,
                size: 37,
              ),
              mytext: 'My Customer',
              mycolor: Colors.green.shade800,
            ),
            const StoreCard(
              newicon: Icon(null),
              myicons: Icon(
                Icons.qr_code,
                color: Colors.white,
                size: 37,
              ),
              mytext: 'Store Qr Code',
              mycolor: Colors.grey,
            ),
            const StoreCard(
              newicon: Icon(null),
              myicons: Icon(
                Icons.payment,
                size: 37,
                color: Colors.white,
              ),
              mytext: 'Extra Charge',
              mycolor: Colors.purple,
            ),
            StoreCard(
              newicon: const Icon(
                Icons.fiber_new,
                color: Colors.green,
                size: 35,
              ),
              myicons: const Icon(
                Icons.format_align_left,
                size: 37,
                color: Colors.white,
              ),
              mytext: 'Order Form',
              mycolor: Colors.pink.shade800,
            ),
          ],
        ),
      ),
    );
  }
}
