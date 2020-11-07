import 'package:analytic/utils/widget-model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:analytic/utils/constant.dart';
import 'package:analytic/utils/logo.dart';
import 'package:analytic/login/screen/fade-slide-transition.dart';


class Header extends StatelessWidget {
  final Animation<double> animation;

  const Header({@required this.animation}) : assert(animation != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Logo(
            color: kBlue,
            size: 48.0,
          ),
          const SizedBox(height: kSpaceM),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: 
            dynamicText("Sign In", fontWeight: FontWeight.bold, fontSize: 22)
          ),
          const SizedBox(height: kSpaceS),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 16.0,
            child: 
            dynamicText('Est ad dolor aute ex commodo tempor exercitation proident.', fontSize: 14)
          ),
        ],
      ),
    );
  }
}