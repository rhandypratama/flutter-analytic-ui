import 'package:flutter/material.dart';
import 'package:analytic/utils/constant.dart';
import 'package:analytic/utils/widget-model.dart';

class Term extends StatefulWidget {
  @override
  _TermState createState() => _TermState();
}

class _TermState extends State<Term> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: defaultCard( 
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: dynamicText(
                      "Effective page on Oct 22, 2020",
                      fontSize: 12
                    )
                  )
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 18),
                    child: dynamicText(
                      "Download",
                      fontSize: 12,
                      color: kBlue
                    )
                  )
                ),
                Center(
                  child: Image.asset(
                    "assets/images/marketing.jpg",
                    height: 200,
                    // fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: dynamicText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident",
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: dynamicText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                    fontSize: 12
                  )
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: dynamicText(
                      "Age requirements",
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: dynamicText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                    fontSize: 12
                  )
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: dynamicText(
                      "Service provider",
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: dynamicText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                    fontSize: 12
                  )
                ),
                Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4, top: 10),
                              child: dynamicText("Privacy checkup", fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: 220,
                              padding: EdgeInsets.only(bottom: 10),
                              child: dynamicText("Looking to change your privacy setting?", fontSize: 12, color: Colors.black45),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.orange[600],
                            child: Icon(Icons.assignment, color: kWhite, size: 30,),
                            radius: 24,
                          ),
                        )
                      ],
                    ),
                    Divider(height: 20),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: dynamicText("Take the Privacy Checkup", fontWeight: FontWeight.w600, color: Colors.blueAccent, fontSize: 13)
                    )
                  ],
                ),
              ],
            ),
          )
        ),
      ),
      
    );
  }
}