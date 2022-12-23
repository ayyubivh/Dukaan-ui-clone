import 'package:flutter/material.dart';

import '../widgets/common_widgets.dart/custom_appbar.dart';
import '../widgets/home_screen/lists_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        myAppBarTitle: 'Home Screen',
        myAppBarIcon: Icon(null),
      ),
      body: list_widget(),
    );
  }
}
