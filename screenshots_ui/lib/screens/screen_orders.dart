import 'package:flutter/material.dart';

import '../widgets/common_widgets.dart/custom_appbar.dart';
import '../widgets/orders.dart/orders._product.dart';

class Screen_orders extends StatelessWidget {
  const Screen_orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        myAppBarTitle: 'Orders #1688068',
        myAppBarIcon: Icon(null),
      ),
      body: orders_product(),
    );
  }
}
