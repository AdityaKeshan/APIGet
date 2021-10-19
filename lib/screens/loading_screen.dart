import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:internwork/screens/homepage.dart';
import 'package:internwork/services/networking.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  void getloc(context) async {
    Networking networking = new Networking(
        "https://run.mocky.io/v3/f3feef1c-9bfa-43fd-b2a0-bbe9abadb4f6");

    var ans = await networking.getData();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MyHomePage(ans: ans);
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    getloc(context);
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Loading... Please wait!",
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            SizedBox(height: 30.0,),
            SpinKitWave(
              color: Colors.white,
              size: 60.0,
            ),
          ],
        )));
  }
}
