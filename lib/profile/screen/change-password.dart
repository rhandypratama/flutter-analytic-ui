import 'package:analytic/utils/custom-text-field.dart';
import 'package:flutter/material.dart';
import 'package:analytic/utils/constant.dart';
import 'package:analytic/utils/widget-model.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            leadingWidth: 44,
            leading: Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 10.0),
              child: GestureDetector(
                child: Icon(Icons.arrow_back_ios_outlined, color: Colors.black45, size: 26),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  dynamicText("Lorem ipsum's account", fontWeight: FontWeight.w600),
                  // dynamicText("Data all of your notifications", fontSize: 12, color: Colors.black45),
                ],
              ),
            ),
            
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height - 150,
          // color: Colors.white,
          padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/security.jpg",
                  height: 200,
                  // fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: dynamicText(
                  "Change Password",
                  fontWeight: FontWeight.w600,
                  fontSize: 24
                )
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                  child: dynamicText(
                    "Create strong password to your account",
                    fontWeight: FontWeight.w600
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
                child: dynamicText(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                  fontSize: 12
                )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(14, 20, 14, 20),
                child: CustomTextField(
                  label: "Create Password",
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: Icons.remove_red_eye_outlined,
                )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(14, 0, 14, 20),
                child: CustomTextField(
                  label: "Confirm",
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: Icons.remove_red_eye_outlined,
                  helperLabel: "At least 8 characters",
                )
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(14, 0, 14, 20),
                  child: defaultRaisedButton("Save", () {})
                ),
              ),
              
              

            ],
          ),
        ),
      ),
      
    );
  }
}