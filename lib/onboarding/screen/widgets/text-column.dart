import 'package:analytic/utils/widget-model.dart';
import 'package:flutter/material.dart';
import 'package:analytic/utils/constant.dart';

class TextColumn extends StatelessWidget {
  final String title;
  final String text;

  const TextColumn({
    @required this.title,
    @required this.text,
  })  : assert(title != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dynamicText(title, fontSize: 28),
        // Text(
        //   title,
        //   style: Theme.of(context)
        //       .textTheme
        //       .headline5
        //       .copyWith(color: kWhite, fontWeight: FontWeight.bold),
        //   textAlign: TextAlign.center,
        // ),
        SizedBox(height: kSpaceS),
        dynamicText(text, fontSize: 16, textAlign: TextAlign.center),
        // Text(
        //   text,
        //   style: Theme.of(context).textTheme.subtitle1.copyWith(color: kWhite),
        //   textAlign: TextAlign.center,
        // ),
      ],
    );
  }
}