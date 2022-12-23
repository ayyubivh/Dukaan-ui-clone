import 'package:flutter/material.dart';

import '../widgets/common_widgets.dart/custom_appbar.dart';
import '../widgets/payment/paymen_card.dart';
import '../widgets/payment/payment_buttons.dart';
import '../widgets/payment/payment_dropdown.dart';
import '../widgets/payment/payment_productlist.dart';

class ScreenPayments extends StatelessWidget {
  const ScreenPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        myAppBarTitle: 'Payments',
        myAppBarIcon: Icon(
          Icons.info_outline,
          size: 30,
        ),
      ),
      body: ListView(
        children: [
          paymentcard(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Steps(),
          ),
          PaymentButton(),
          List_payment(),
        ],
      ),
    );
  }
}
