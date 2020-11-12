import 'package:analytic/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:analytic/campaign/provider/campaign-provider.dart';
import 'package:analytic/notification/screen/notification.dart';
import 'package:analytic/profile/screen/profile.dart';
import 'package:analytic/utils/widget-model.dart';

class Campaign extends StatefulWidget {
  @override
  _CampaignState createState() => _CampaignState();
}

class _CampaignState extends State<Campaign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 4,
            automaticallyImplyLeading: false,
            title: GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        dynamicText("Lorem Ipsum's account", fontWeight: FontWeight.w600),
                        Icon(Icons.arrow_drop_down, color: Colors.black,),
                      ]
                    ),
                    dynamicText("Recomendations", fontSize: 12, color: Colors.black45),
                  ],
                ),
              ),
              onTap: () {
                navigationManager(context, Profile(), isPushReplaced: false);
              },
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10, top: 10),
                child: GestureDetector(
                  child: Icon(Icons.notifications_outlined, color: Colors.black45, size: 30,),
                  onTap: () {
                    navigationManager(context, NotificationScreen(), isPushReplaced: false);
                  },
                ),
              )
            ],
          ),
        ),
      ),
      body: ChangeNotifierProvider<CampaignProvider>(
        create: (context) => CampaignProvider(),
        child: Consumer<CampaignProvider>(
          builder: (context, provider, child) {
            if (provider.data == null) {
              provider.getData(context);
              return Center(child: CircularProgressIndicator());
            }
            return SingleChildScrollView(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(12, 14, 12, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: LinearPercentIndicator(
                          // width: 100.0,
                          lineHeight: 10.0,
                          percent: 0.21,
                          backgroundColor: Colors.grey[300],
                          progressColor: Colors.blueAccent,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: dynamicText(
                        "Lets start your campaign! How do you get new customer?", 
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center
                      )
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: dynamicText(
                        "Improve your score by following the recomendations", 
                        fontSize: 14, 
                        color: Colors.black45,
                        textAlign: TextAlign.center
                      ),
                    ),

                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          dataRowHeight: 36,
                          // dividerThickness: 0.7,
                          showBottomBorder: false,
                          columns: [
                            DataColumn(
                              label: dynamicText('Verified'),
                              tooltip: 'represents if user is verified.'),
                            DataColumn(
                              label: dynamicText('First Name'),
                              tooltip: 'represents first name of the user'),
                            DataColumn(
                              label: dynamicText('Last Name'),
                              tooltip: 'represents last name of the user'),
                            DataColumn(
                              label: dynamicText('Email'),
                              tooltip: 'represents email address of the user'),
                            DataColumn(                              
                              label: dynamicText('Phone'),
                              tooltip: 'represents phone number of the user'),
                          ],
                          rows: provider.data.results
                            .map((data) =>
                              // we return a DataRow every time
                              DataRow(
                                // List<DataCell> cells is required in every row
                                cells: [
                                  DataCell((data.verified) 
                                    ? Icon(Icons.verified_user, color: Colors.green, size: 18)
                                    : Icon(Icons.cancel, color: Colors.red, size: 18)
                                  ),
                                  // I want to display a green color icon when user is verified and red when unverified
                                  DataCell(dynamicText(data.firstName, fontSize: 12)),
                                  DataCell(dynamicText(data.lastName, fontSize: 12)),
                                  DataCell(dynamicText(data.email, fontSize: 12)),
                                  DataCell(dynamicText(data.phone, fontSize: 12)),
                                ]
                              )
                            ).toList(),
                      ),
                      ),
                  ],
                ),
              ),
            );
          }
        )
      )
    );
  }
}