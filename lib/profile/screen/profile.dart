import 'package:analytic/utils/constant.dart';
import 'package:analytic/utils/widget-model.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                  dynamicText("My Account", fontWeight: FontWeight.w600),
                  // dynamicText("Data all of your notifications", fontSize: 12, color: Colors.black45),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 16, top: 10),
                child: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: kLightBlue,
                    child: Icon(
                      Icons.person_outline_outlined, color: kWhite, size: 24,)),
                  onTap: () {
                    
                  },
                ),
              )
            ],
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
              defaultCard(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: dynamicText("Profile", fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: dynamicText("Some info may be visible to other people using service", fontSize: 12, color: Colors.black45),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: dynamicText("PHOTO", fontSize: 12),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 0),
                              child: dynamicText("Add photo to personalized your account", fontSize: 12, color: Colors.black45),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: kLightBlue,
                          child: dynamicText("M", color: kWhite),
                        )
                      ],
                    ),
                    Divider(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: dynamicText("NAME", fontSize: 12),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 0),
                              child: dynamicText("Lorem Ipsum", fontSize: 14, color: Colors.black87),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, color: Colors.black45, size: 16)
                      ],
                    ),
                    Divider(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: dynamicText("BIRTHDAY", fontSize: 12),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 0),
                              child: dynamicText("July 22, 1999", fontSize: 14, color: Colors.black87),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, color: Colors.black45, size: 16)
                      ],
                    ),
                    Divider(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: dynamicText("GENDER", fontSize: 12),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 0),
                              child: dynamicText("Male", fontSize: 14, color: Colors.black87),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, color: Colors.black45, size: 16)
                      ],
                    ),
                    Divider(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: dynamicText("PASSWORD", fontSize: 12),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 0),
                              child: dynamicText("**************", fontSize: 14, color: Colors.black87),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, color: Colors.black45, size: 16)
                      ],
                    ),
                    SizedBox(height: 4)
                    
                  ],
                ),
              ),

              defaultCard(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: dynamicText("Contact Info", fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: dynamicText("EMAIL", fontSize: 12),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 0),
                              child: dynamicText("lorem_ipsum@gmail.com", fontSize: 14, color: Colors.black87),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, color: Colors.black45, size: 16)
                      ],
                    ),
                    Divider(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: dynamicText("PHONE", fontSize: 12),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 0),
                              child: dynamicText("XXXX XXXX X381", fontSize: 14, color: Colors.black87),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, color: Colors.black45, size: 16)
                      ],
                    ),
                    
                    SizedBox(height: 4)
                    
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      
    );
  }
}