import 'package:flutter/material.dart';
import 'package:analytic/notification/screen/notification.dart';
import 'package:analytic/overview/model/hbar-chart-model.dart';
import 'package:analytic/profile/screen/profile.dart';
import 'package:analytic/overview/model/main-chart-model.dart';
import 'package:analytic/utils/widget-model.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final myFakeDesktopData = [
      new LinearSales(0, 100),
      new LinearSales(1, 25),
      new LinearSales(2, 80),
      new LinearSales(3, 60),
    ];

    var myFakeTabletData = [
      new LinearSales(0, 80),
      new LinearSales(1, 20),
      new LinearSales(2, 50),
      new LinearSales(3, 70),
    ];

    var myFakeMobileData = [
      new LinearSales(0, 15),
      new LinearSales(1, 35),
      new LinearSales(2, 40),
      new LinearSales(3, 130),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Desktop',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeDesktopData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Tablet',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeTabletData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Mobile',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeMobileData,
      ),
    ];
  }

  // static List<charts.Series<GaugeSegment, String>> _createSampleGaugeData() {
  //   final data = [
  //     new GaugeSegment('Low', 75),
  //     new GaugeSegment('Acceptable', 100),
  //     new GaugeSegment('High', 50),
  //     new GaugeSegment('Highly Unusual', 5),
  //   ];

  //   return [
  //     new charts.Series<GaugeSegment, String>(
  //       id: 'Segments',
  //       domainFn: (GaugeSegment segment, _) => segment.segment,
  //       measureFn: (GaugeSegment segment, _) => segment.size,
  //       data: data,
  //     )
  //   ];
  // }

  static List<charts.Series<OrdinalSales, String>> _createSampleHbarData() {
    final data = [
      new OrdinalSales('Click', 105),
      new OrdinalSales('Cost', 10),
      new OrdinalSales('Campaign', 80),
      new OrdinalSales('Improvement', 45),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
        // Set a label accessor to control the text of the bar label.
        labelAccessorFn: (OrdinalSales sales, _) => '${sales.year}: \$${sales.sales.toString()}'
      )
    ];
  }

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
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height - 150,
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4, top: 4, right: 6, bottom: 10),
                    child: Icon(Icons.calendar_today_outlined, color: Colors.black45, size: 18,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4, bottom: 10),
                    child: dynamicText("Last 7 days", fontSize: 12),
                  ),
                ],
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    defaultButtonTab(
                      Row(
                        children: [
                          dynamicText("Clicks", fontSize: 10),
                          SizedBox(width: 4),
                          dynamicText("130K", fontSize: 14, fontWeight: FontWeight.w600),
                        ],
                      )
                    ),
                    defaultHighlightButtonTab(
                      Row(
                        children: [
                          dynamicText("Costs", fontSize: 10, color: Colors.white),
                          SizedBox(width: 4),
                          dynamicText("\$40.3", fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                        ],
                      )
                    ),
                    defaultButtonTab(
                      Row(
                        children: [
                          dynamicText("Improvements", fontSize: 10),
                          SizedBox(width: 4),
                          dynamicText("180K", fontSize: 14, fontWeight: FontWeight.w600),
                        ],
                      )
                    ),
                    defaultButtonTab(
                      Row(
                        children: [
                          dynamicText("Balance", fontSize: 10),
                          SizedBox(width: 4),
                          dynamicText("10K", fontSize: 14, fontWeight: FontWeight.w600),
                        ],
                      )
                    ),
                    
                  ],
                ),
              ),
              
              Container(
                width: double.infinity,
                height: 200,
                padding: EdgeInsets.only(left: 10, bottom: 20, top: 10, right: 0),
                child: MainChart(
                  _createSampleData(),
                  animate: true,
                )
              ),
              
              defaultCard(
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 14.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: dynamicText("81.3%", fontSize: 30, fontWeight: FontWeight.w600, color: Colors.blueAccent),
                          ),
                          
                          LinearPercentIndicator(
                            width: 100.0,
                            lineHeight: 14.0,
                            percent: 0.81,
                            backgroundColor: Colors.grey[300],
                            progressColor: Colors.blueAccent,
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: dynamicText("Optimization score", fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                              child: Icon(Icons.info_outline, color: Colors.black45, size: 18,),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(0),
                          width: 200,
                          child: dynamicText("Improve your score by following the recomendations below ", fontSize: 12, color: Colors.black45),
                        ),
                      ],
                    ),
                    // dynamicText("tes")
                  ],
                ),
              ),

              Container(
                height: 80,
                margin: EdgeInsets.only(top: 4, bottom: 4),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    defaultListCard(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          dynamicText("43.6%", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blueAccent),
                          dynamicText("Clicks", fontSize: 12),
                          // SizedBox(width: 4),
                        ],
                      )
                    ),
                    defaultListCard(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          dynamicText("21.6%", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blueAccent),
                          dynamicText("Cyber Monday", fontSize: 12),
                          // SizedBox(width: 4),
                        ],
                      )
                    ),
                    defaultListCard(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          dynamicText("91.6%", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blueAccent),
                          dynamicText("Black Friday", fontSize: 12),
                          // SizedBox(width: 4),
                        ],
                      )
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 200,
                padding: EdgeInsets.only(left: 0, bottom: 20, top: 0, right: 0),
                child: HorizontalBarLabelChart(
                  _createSampleHbarData(),
                  animate: true,
                )
              ),

              defaultCard(
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              padding: EdgeInsets.all(4),
                              child: Icon(Icons.search, size: 14, color: Colors.white,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6, bottom: 4),
                              child: dynamicText("Bid more efficiently with Target CPA", fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            defaultChip("+5.8%"),
                            Padding(
                              padding: EdgeInsets.only(left: 4, bottom: 4),
                              child: Icon(Icons.more_vert_outlined),
                            ),
                          ],
                        ),

                      ],
                    ),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: dynamicText("Show your ads more often to people searching what your business offers", fontWeight: FontWeight.w600),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(vertical: 20),
                        //   child: dynamicText("Improve your score by following the recomendations below. Recomended because you're not targetting", fontSize: 12, color: Colors.black45),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularPercentIndicator(
                                radius: 80.0,
                                lineWidth: 10.0,
                                animation: true,
                                percent: 0.7,
                                center: dynamicText("70.0%", fontSize: 14, fontWeight: FontWeight.w600),
                                footer: dynamicText("Sales", fontSize: 14, fontWeight: FontWeight.w600),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Colors.green,
                              ),
                              CircularPercentIndicator(
                                radius: 80.0,
                                lineWidth: 10.0,
                                animation: true,
                                percent: 0.4,
                                center: dynamicText("40.0%", fontSize: 14, fontWeight: FontWeight.w600),
                                footer: dynamicText("Purchase", fontSize: 14, fontWeight: FontWeight.w600),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Colors.cyan,
                              ),
                              CircularPercentIndicator(
                                radius: 80.0,
                                lineWidth: 10.0,
                                animation: true,
                                percent: 0.1,
                                center: dynamicText("10.0%", fontSize: 14, fontWeight: FontWeight.w600),
                                footer: dynamicText("Order", fontSize: 14, fontWeight: FontWeight.w600),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Colors.red,
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: defaultFlatButton(
                                "View More",
                                () {}
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: defaultRaisedButton(
                                "Apply",
                                () {}
                              )
                              
                            ),

                          ],
                        ),
                      ],
                    ),
                    // dynamicText("tes")
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

class MainChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;
  MainChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(
      seriesList,
      defaultRenderer: new charts.LineRendererConfig(
        includeArea: true, 
        stacked: true
      ),
      animate: animate
    );
  }
}

class GaugeChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;
  final double pi = 3.14;

  GaugeChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(
      seriesList,
      animate: animate,
      defaultRenderer: new charts.ArcRendererConfig(
        arcWidth: 100, 
        startAngle: 4 / 5 * pi, 
        arcLength: 7 / 5 * pi
      )
    );
  }
}

class HorizontalBarLabelChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  HorizontalBarLabelChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      vertical: false,
      // Set a bar label decorator.
      // Example configuring different styles for inside/outside:
      //       barRendererDecorator: new charts.BarLabelDecorator(
      //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
      //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      // Hide domain axis.
      domainAxis: new charts.OrdinalAxisSpec(renderSpec: new charts.NoneRenderSpec()),
    );
  }
}