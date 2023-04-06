import 'package:flutter/material.dart';

class SubCard extends StatefulWidget {
  Map<dynamic, dynamic> current;
  SubCard({required this.current});
  @override
  State<SubCard> createState() => SubCardState(current);
}

class SubCardState extends State<SubCard> {
  Map data;
  SubCardState(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 120,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes the position of the shadow
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.center,
              width: 110,
              //color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.red,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Wind',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    //color: Colors.amber,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${data['wind_kph']} kph',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              width: 110,
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.red,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Humidity',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    //color: Colors.amber,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${data['humidity']}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.center,
              width: 110,
              //color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.red,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Visibility',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    //color: Colors.amber,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${data['vis_km']} km',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
