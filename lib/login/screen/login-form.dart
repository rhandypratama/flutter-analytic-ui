import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:analytic/home.dart';
import 'package:analytic/login/screen/custom-password-field.dart';
import 'package:analytic/password/screen/forgot-password.dart';
import 'package:analytic/register/screen/register.dart';
import 'package:analytic/utils/widget-model.dart';
import 'package:analytic/utils/constant.dart';
import 'package:analytic/login/screen/custom-button.dart';
import 'package:analytic/login/screen/custom-input-field.dart';
import 'package:analytic/login/screen/fade-slide-transition.dart';

class LoginForm extends StatelessWidget {
  final Animation<double> animation;

  const LoginForm({@required this.animation}) : assert(animation != null);

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
              label: 'Username or Email',
              prefixIcon: Icons.person_outline,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: CustomPasswordField(
              label: 'Password',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: GestureDetector(
              child: Align(
                alignment: Alignment.centerRight,
                child: dynamicText("Forgot Password", fontSize: 12, color: kBlue),
              ),
              onTap: () async {
                navigationManager(context, ForgotPassword(screenHeight: MediaQuery.of(context).size.height), isPushReplaced: false);
              },
            )
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: CustomButton(
              color: kBlue,
              textColor: kWhite,
              text: 'Login to continue',
              onPressed: () {
                navigationManager(context, Home(), isPushReplaced: false);
              },
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 3 * space,
            child: CustomButton(
              color: kWhite,
              textColor: kBlack.withOpacity(0.5),
              text: 'Continue with Google',
              // image: SvgPicture.asset(
              //   kGoogleLogoPath,
              //   placeholderBuilder: (context) => CircularProgressIndicator(),
              //   height: 48,
              //   color: Colors.grey,
                
              // ),
              image: Image(
                image: AssetImage(kGoogleLogoPath),
                height: 48.0,
              ),
              onPressed: () {
                navigationManager(context, Home(), isPushReplaced: false);
              },
            ),
          ),
          SizedBox(height: space),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeSlideTransition(
                animation: animation,
                additionalOffset: 4 * space,
                child: dynamicText("Do you have an account?", fontSize: 12)
              ),
              SizedBox(width: 4),
              FadeSlideTransition(
                animation: animation,
                additionalOffset: 4 * space,
                child: GestureDetector(
                  child: dynamicText("Create Account", fontSize: 12, color: kBlue),
                  onTap: () async {
                    navigationManager(context, Register(screenHeight: MediaQuery.of(context).size.height), isPushReplaced: false);
                  },
                )
              ),
            ],
          )
          
        ],
      ),
    );
  }
}