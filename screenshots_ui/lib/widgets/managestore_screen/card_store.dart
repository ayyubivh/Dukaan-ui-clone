import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({
    super.key,
    required this.myicons,
    required this.mytext,
    required this.mycolor,
    required this.newicon,
  });
  final Icon newicon;
  final Icon myicons;
  final String mytext;
  final Color mycolor;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: mycolor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: myicons,
                ),
              ),
              newicon,
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13),
          child: SizedBox(
            width: 100,
            child: Text(
              mytext,
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ]),
    );
  }
}
