// ignore_for_file: unnecessary_null_comparison, unused_element

import 'package:flutter/material.dart';
//functions
import '../api/getWeather.dart';
//containers
import 'components/maincard.dart';
import 'components/subcard.dart';
import 'components/navbar.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  Map weatherData = {};
  Map location = {};
  Map currentWeather = {};
  //get current weatherData
  Future<void> getWeather() async {
    Map<dynamic, dynamic> data = await getCurrentWeather('Albay');
    //await Future.delayed(Duration(seconds: 2));
    setState(() {
      weatherData = data;
      location = weatherData['location'];
      currentWeather = weatherData['current'];
    });
  }

  double opacity = 0;
  @override
  void initState() {
    print('initState');
    super.initState();
    getWeather();
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: Duration(milliseconds: 1000),
      child: Scaffold(
          //appBar: AppBar(backgroundColor: Colors.white,),
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
          body: weatherData.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue.shade500,
                  ),
                )
              : SafeArea(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          MainCard(current: currentWeather),
                          SubCard(current: currentWeather),
                          //NavBar(),
                        ],
                      ),
                    ),
                  ),
                )),
    );
  }
}
//openWeather API key = 65c03d7fb18cd02c58e8a581c9125184