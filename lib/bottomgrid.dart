import 'package:flutter/material.dart';
import 'package:calc/components/button.dart';
import 'Constants.dart';

class BottomGrid extends StatelessWidget {
  final bool selected;
  final Function callback;
  BottomGrid({this.selected, this.callback});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(0),
      reverse: true,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: selected ? 2.2 : 1.5),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, int) {
        return Button(
            text: kBottomGridText[int].toString(),
            textColor: ktextColor[int],
            textSize: selected ? 28 : 35,
            callback: () {
              callback(int, kBottomGridText);
            });
      },
    );
  }
}
