import 'package:flutter/material.dart';

import '../common_widgets.dart/sizidbox.dart';
import '../common_widgets.dart/text.dart';

class Step {
  Step(this.title, this.body, [this.isExpanded = false]);
  String title;
  String body;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('Default Method', 'Online Payments'),
    Step('Payment Profile', 'Bank Account'),
    Step('Payment Overview', 'Life Time'),
  ];
}

class Steps extends StatefulWidget {
  Steps({Key? key}) : super(key: key);
  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderSteps(),
      ),
    );
  }

  Widget _renderSteps() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                step.title,
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                step.body,
                style: TextStyle(fontSize: 18.0, color: Colors.black54),
              ),
            );
          },
          body: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 14),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(9.0)),
                    height: 90.0,
                    width: 166,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const texts(
                              fontweight: FontWeight.w400,
                              mystring: 'AMOUNT HOLD  ',
                              mycolor: Colors.white,
                              myfontsize: 19),
                          // ignore: prefer_const_constructors
                          Sizbox(myheight: 9.0, mywidth: 1),
                          const texts(
                              fontweight: FontWeight.w600,
                              mystring: ' 0₹ ',
                              mycolor: Colors.white,
                              myfontsize: 24.0),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 14),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(9.0)),
                    height: 90.0,
                    width: 180.0,
                    child: Padding(
                      padding: const EdgeInsets.all(9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const texts(
                              fontweight: FontWeight.w400,
                              mystring: 'AMOUNT RECEIVED ',
                              mycolor: Colors.white,
                              myfontsize: 18),
                          Sizbox(myheight: 8.0, mywidth: 1),
                          const texts(
                              fontweight: FontWeight.w600,
                              mystring: ' ₹13,332 ',
                              mycolor: Colors.white,
                              myfontsize: 24.0),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}
