import 'package:flutter/material.dart';

import '../widgets/common_widgets.dart/custom_appbar.dart';
import '../widgets/common_widgets.dart/sizidbox.dart';
import '../widgets/dukaan_premium.dart/dukaan.youtube.dart';
import '../widgets/dukaan_premium.dart/dukaan_features.dart';
import '../widgets/dukaan_premium.dart/dukaan_help.dart';
import '../widgets/dukaan_premium.dart/dukaan_questions.dart';
import '../widgets/dukaan_premium.dart/dukan_card.dart';

class ScreenDukan extends StatelessWidget {
  const ScreenDukan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          myAppBarTitle: 'Dukan Premium',
          myAppBarIcon: Icon(null),
        ),
        body: ListView(
          children: [
            dukaan_card(),
            Sizbox(myheight: 120, mywidth: 1),
            Dukaan_features(),
            dukaan_youtube(),
            Steps_question(),
            dukaan_help(),
          ],
        ));
  }
}
