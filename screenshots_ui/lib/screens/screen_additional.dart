import 'package:flutter/material.dart';

import '../widgets/additional_information/additiona_lists.dart';
import '../widgets/common_widgets.dart/custom_appbar.dart';

class ScreenAdditionalInformation extends StatelessWidget {
  const ScreenAdditionalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        myAppBarTitle: "Additional Information",
        myAppBarIcon: Icon(null),
      ),
      body: Column(
        children: const [
          Expanded(
            child: list_additional(),
          ),
          text_widget(
            mytext: 'version',
            mycolor: Colors.black45,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: text_widget(mytext: '2.4.2', mycolor: Colors.black54),
          ),
        ],
      ),
    );
  }
}
