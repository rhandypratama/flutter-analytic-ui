import 'package:flutter/material.dart';
import 'package:analytic/utils/constant.dart';
import 'package:analytic/utils/widget-model.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool swVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Column(
            children: [
              defaultCard(
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
                              child: dynamicText("Location sharing", fontWeight: FontWeight.w500),
                            ),
                            Container(
                              width: 220,
                              padding: EdgeInsets.only(bottom: 10),
                              child: dynamicText("You are not sharing your location point", fontSize: 12, color: Colors.black45),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.yellow[600],
                            child: Icon(Icons.location_off_outlined, color: kWhite, size: 30,),
                            radius: 24,
                          ),
                        )
                      ],
                    ),
                    Divider(height: 20),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: dynamicText("Manage location sharing", fontWeight: FontWeight.w600, color: Colors.blueAccent, fontSize: 13)
                    )
                  ],
                ),
              ),
              defaultCard(
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
                              child: dynamicText("Notification", fontWeight: FontWeight.w500),
                            ),
                            Container(
                              width: 220,
                              padding: EdgeInsets.only(bottom: 10),
                              child: dynamicText("Your notification can be display", fontSize: 12, color: Colors.black45),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Switch(
                            onChanged: (newVal) {
                              setState(() {
                                swVal = newVal;
                              });
                            },
                            value: swVal,
                          )
                        )
                      ],
                    ),
                  ],
                ),
              ),
              defaultCard(
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
                              child: dynamicText("Show security notifications", fontWeight: FontWeight.w500),
                            ),
                            Container(
                              width: 220,
                              padding: EdgeInsets.only(bottom: 10),
                              child: dynamicText("Your notification can be display", fontSize: 12, color: Colors.black45),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Switch(
                            onChanged: (newVal) {
                              setState(() {
                                swVal = newVal;
                              });
                            },
                            value: swVal,
                          )
                        )
                      ],
                    ),
                  ],
                ),
              ),
              defaultCard(
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
                              child: dynamicText("Timezone", fontWeight: FontWeight.w500),
                            ),
                            Container(
                              width: 220,
                              padding: EdgeInsets.only(bottom: 10),
                              child: dynamicText("Default timezone can be show (GMT+7)", fontSize: 12, color: Colors.black45),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.green[600],
                            child: Icon(Icons.more_time_outlined, color: kWhite, size: 30,),
                            radius: 24,
                          ),
                        )
                      ],
                    ),
                    Divider(height: 20),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: dynamicText("Manage timezone", fontWeight: FontWeight.w600, color: Colors.blueAccent, fontSize: 13)
                    )
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