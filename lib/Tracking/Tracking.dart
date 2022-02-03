import 'dart:io';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:intl/intl.dart';
import 'package:tayseer/backend/backend.dart';

class Tracking extends StatefulWidget {
  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  List<LocationClass> list = [];
  Location location = new Location();
  /*late*/ bool _serviceEnabled;
  /*late*/ PermissionStatus _permissionGranted;
  /*late*/ LocationData _locationData;

  @override
  void initState() {
    list.clear();
    requestPermission();

    super.initState();
  }

  requestPermission() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      print('denied');
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        print('denied');
        return;
      }
    }
    location.enableBackgroundMode(enable: true);
    await location.changeSettings(
        accuracy: LocationAccuracy.navigation, distanceFilter: 3
        //if 10 seconds are passed AND* if the phone is moved at least 5 meters, give the location. must be (both)
        );
    getcurrentLocation();
  }

  getcurrentLocation() async {
    //_locationData = await location.getLocation();
    /* print('hi');
    setState(() {
      list.add(LocationClass(
          lat: _locationData.latitude,
          long: _locationData.longitude,
          time: _locationData.time,
          speed: _locationData.speed));
    });*/

    location.onLocationChanged.listen((LocationData currentLocation) {
      setState(() {
        list.add(LocationClass(
            /* lat:*/ currentLocation.latitude,
            /*long:*/ currentLocation.longitude,
            /*time:*/ currentLocation.time,
            /*speed:*/ currentLocation.speed));
      });

      FirebaseFirestore.instance
          .collection('Tracking')
          .doc('rawan')
          .collection('locations')
          .doc('${currentLocation.time}')
          .set({
        'lat': currentLocation.latitude,
        'long': currentLocation.longitude,
        'time': currentLocation.time,
        'speed': currentLocation.speed
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          width: 800,
          height: 2000,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'locations: ',
              style: TextStyle(color: Colors.amber, fontSize: 18),
            ),
            Container(
                width: 500,
                height: 755,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Text('location $index:',
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 18)),
                          Text(
                              'lat: ${list[index].lat} \n long: ${list[index].long}',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 18)),
                          Text(
                              'time: ${DateTime.fromMillisecondsSinceEpoch((list[index].time).toInt())} \n speed: ${list[index].speed} m\\s ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18)),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    }))
          ])),
    );
  }
}

class LocationClass {
  final lat;
  final long;
  final time;
  final speed;

  LocationClass(/* {required*/ this.lat, /*  required*/ this.long,
      /*  required*/ this.time, /* required*/ this.speed /*}*/);
}
