import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:analytic/login/screen/login.dart';
import 'package:analytic/utils/widget-model.dart';
import 'package:analytic/utils/constant.dart';
import 'package:analytic/password/screen/custom-button.dart';
import 'package:analytic/password/screen/custom-input-field.dart';
import 'package:analytic/password/screen/fade-slide-transition.dart';

class ForgotPasswordForm extends StatelessWidget {
  final Animation<double> animation;

  const ForgotPasswordForm({@required this.animation}) : assert(animation != null);

  // AnimationController _rippleAnimationController;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var space = height > 650 ? kSpaceM : kSpaceS;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: CustomInputField(
              label: 'Email',
              prefixIcon: Icons.mail_outline,
              obscureText: false,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: CustomButton(
              color: kBlue,
              textColor: kWhite,
              text: 'Submit',
              onPressed: () {
                navigationManager(context, Login(screenHeight: MediaQuery.of(context).size.height), isPushReplaced: false);
              },
            ),
          ),
        ],
      ),
    );
  }
}