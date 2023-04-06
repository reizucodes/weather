// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MainCard extends StatefulWidget {
  Map<dynamic, dynamic> current;
  MainCard({required this.current});
  @override
  State<MainCard> createState() => MainCardState(current);
}

class MainCardState extends State<MainCard> {
  Map<dynamic, dynamic> currentWeatherData;
  MainCardState(this.currentWeatherData);
  @override
  Widget build(BuildContext context) {
    //current status, img, time of day
    String weatherCondition = currentWeatherData['condition']['text'];
    String img = currentWeatherData['condition']['icon'];
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(8),
      height: 200,
      //width: 500,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes the position of the shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.blue.shade500,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(top: 12.0),
              //color: Colors.blue.shade400,
              width: 180,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        //height: 70,
                        child: Image.network(
                          'https:$img',
                        ),
                      ),
                      Text(
                        weatherCondition,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        'Morning',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ]),
              )),
          Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(top: 12.0),
              //color: Colors.blue.shade400,
              width: 170,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${currentWeatherData['temp_c'].toString()}°',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 70.0,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Feels like 30°',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            letterSpacing: 1.6),
                      ),
                    ]),
              )),
        ],
      ),
    );
  }
  /*
    List<String> myList = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
    return Container(
      height: 200.0,
      width: 200.0,
      child: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 100.0,
            height: 100.0,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey,
            ),
            child: Center(
              child: Text(myList[index]),
            ),
          );
        },
      ),
    );
    */
}
