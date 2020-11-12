import 'package:flutter/material.dart';
import 'package:analytic/setting/screen/term.dart';
import 'package:analytic/setting/screen/privacy.dart';
import 'package:analytic/setting/screen/help.dart';
import 'package:analytic/setting/screen/setting.dart';
import 'package:analytic/utils/widget-model.dart';

class Option extends StatefulWidget {
  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(110),
            child: Container(
              child: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
                title: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dynamicText("More Option", fontWeight: FontWeight.w600),
                      dynamicText("Lorem ipsum dolor ismet", fontSize: 12, color: Colors.black45),
                    ],
                  ),
                ),
                bottom: TabBar(
                  labelColor: Colors.black,
                  isScrollable: true,
                  indicatorWeight: 2,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelStyle: TextStyle(color: Colors.black12),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      child: Container(
                        // width: 290,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: dynamicText("Setting", fontSize: 12)
                            )
                          ]
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        // width: 70,
                        child: dynamicText("Help", fontSize: 12)
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: dynamicText("Terms Condition", fontSize: 12)
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: dynamicText("Privacy Policy", fontSize: 12)
                      ),
                    ),
                    
                              
                  ]
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Setting(),
              Help(),
              Term(),
              Privacy(),
            ]
          ),
          
        ),
      ),
    );
  }
}