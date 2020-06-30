import 'package:activity_tracker_ui/home/line_chart_sample.dart';
import 'package:activity_tracker_ui/home/week_day_card.dart';
import 'package:activity_tracker_ui/home/weekly_stat_card.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey[200],
        color: Colors.white,
        buttonBackgroundColor: Colors.orange,
        items: [
          FaIcon(FontAwesomeIcons.trophy),
          Icon(
            Icons.add,
            size: 45.0,
          ),
          FaIcon(FontAwesomeIcons.user),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black38,
                size: 30.0,
              ),
              onPressed: () {}),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black38,
              size: 30.0,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(
                20.0,
              ),
              child: Text(
                'Your \nActivities',
                style: TextStyle(
                  fontSize: 46.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    for (var day = 1; day <= 7; day++)
                      WeekDayCard(
                        day: '0${day.toString()}',
                      )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'TOTAL',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    '1500 KCAL',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
            LineChartSample2(),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              decoration: BoxDecoration(
                  color: Colors.grey[200].withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                    child: Text(
                      'Weekly Stats',
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 20.0),
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20.0,
                          ),
                          WeeklyStatCard(
                            icon: Icons.directions_run,
                            stat: 960,
                            color: Colors.orange[50],
                            iconColor: Colors.orange[300],
                          ),
                          WeeklyStatCard(
                            icon: Icons.directions_bike,
                            stat: 2150,
                            color: Colors.green[50],
                            iconColor: Colors.green[300],
                          ),
                          WeeklyStatCard(
                            icon: Icons.rowing,
                            stat: 1160,
                            color: Colors.red[50],
                            iconColor: Colors.red[300],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}