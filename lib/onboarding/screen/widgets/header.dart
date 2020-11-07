import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:analytic/utils/constant.dart';
import 'package:analytic/utils/logo.dart';

class Header extends StatelessWidget {
  final VoidCallback onSkip;

  const Header({
    @required this.onSkip,
  }) : assert(onSkip != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Logo(
          color: kBlue,
          size: 60.0,
        ),
        // GestureDetector(
        //   onTap: onSkip,
        //   child: dynamicText("Skip", color: kBlue, fontSize: 14, fontWeight: FontWeight.w600),
        // ),
      ],
    );
  }
}