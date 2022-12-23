import 'package:flutter/material.dart';

import '../../../screens/screen_additional.dart';
import '../../../screens/screen_catalogue.dart';
import '../../../screens/screen_dukanpremium.dart';
import '../../../screens/screen_payments.dart';
import '../../screens/screen_managestor.dart';
import '../../screens/screen_orders.dart';

class list_widget extends StatelessWidget {
  const list_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      'Additional Information',
      'Manage Store',
      'Payments',
      'Dukan Premium',
      'Catalogue',
      'Order'
    ];

    List<Widget> screens = [
      const ScreenAdditionalInformation(),
      ScreenManagestore(),
      const ScreenPayments(),
      const ScreenDukan(),
      const ScreenCatalogue(),
      const Screen_orders(),
    ];

    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      itemCount: 6,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => screens[index],
              ),
            );
          },
          title: Text('${items[index]}'),
        );
      },
    );
  }
}
