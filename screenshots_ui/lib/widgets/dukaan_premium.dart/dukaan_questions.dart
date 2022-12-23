import 'package:flutter/material.dart';

class Step {
  Step(this.title, this.body, [this.isExpanded = false]);
  String title;
  String body;
  bool isExpanded;
}

Future<List<Step>> getSteps() async {
  var _items = [
    Step('What types of businesses can use Dukaan Premium?',
        'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
    Step('What is your refund policy?',
        'Open your terminal, run `flutter create <project_name>` to create a new project.'),
    Step('Will there be an automatic charge after the paid trial?',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
    Step('What payment methods do you offer?',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
    Step('What happens when my free trial ends?',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
    Step('What are the terms for the custom domain?',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
  ];
  return Future<List<Step>>.delayed(const Duration(seconds: 2), () => _items);
}

class Steps_question extends StatelessWidget {
  const Steps_question({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: FutureBuilder<List<Step>>(
            future: getSteps(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Step>> snapshot) {
              if (snapshot.hasData) {
                return StepList(steps: snapshot.data ?? []);
              } else {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            }),
      ),
    );
  }
}

class StepList extends StatefulWidget {
  final List<Step> steps;
  const StepList({Key? key, required this.steps}) : super(key: key);
  @override
  State<StepList> createState() => _StepListState(steps: steps);
}

class _StepListState extends State<StepList> {
  final List<Step> _steps;
  _StepListState({required List<Step> steps}) : _steps = steps;
  @override
  Widget build(BuildContext context) {
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
                style: TextStyle(
                    color: Color.fromARGB(136, 29, 28, 28),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.3),
              ),
            );
          },
          body: ListTile(
            title: Text(step.body,
                style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 0.3,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600)),
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}
