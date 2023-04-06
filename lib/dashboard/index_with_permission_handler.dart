// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
//permissions
import 'package:permission_handler/permission_handler.dart';
//functions
import '../api/getWeather.dart';
//containers
import 'components/maincard.dart';
import 'components/navbar.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => DashboardState();
}

Map<dynamic, dynamic> map = getCurrentWeather('Legaspi');

class DashboardState extends State<Dashboard> {
  //create prompt function for getting device location

  @override
  Widget build(BuildContext context) {
    //print(map);
    PermissionStatus? permissionStatus;

    @override
    Future<void> checkPermission() async {
      final status = await Permission.location.status;
      print('status: $status');
      setState(() {
        permissionStatus = status;
      });
    }

    @override
    void initState() {
      super.initState();
      checkPermission();
    }

    Future<void> requestPermission() async {
      final status = await Permission.location.request();
      print('status: $status');
      setState(() {
        permissionStatus = status;
      });
    }

    print(permissionStatus);
    return permissionStatus == null
        ? Scaffold(
            //appBar: AppBar(backgroundColor: Colors.white,),
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      //MainCard(),
                      //NavBar(),
                    ],
                  ),
                ),
              ),
            ))
        : AlertDialog(
            title: Text('Location Permission'),
            content: Text('This app needs your location to function.'),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  requestPermission();
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
  }
}
//openWeather API key = 65c03d7fb18cd02c58e8a581c9125184