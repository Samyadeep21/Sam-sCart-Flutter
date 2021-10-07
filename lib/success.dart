import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music/sign_up.dart';

class success extends StatelessWidget {

  BuildContext? _context;
  @override
  Widget build(BuildContext context) {
    if (_context == null) {
      _context = context;
      initTimer();
    }
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.grey.shade400,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Text(
              "Login Success",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
            ),
          )),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'asset/images/success.png',
            ),
            fit: BoxFit.cover,
          )),
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                    height: 510,
            ), Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Center(
                  child: Text(
                    'You have Successfully Logged In',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey.shade400),
                  ),
                ),
              ),
            ),
          ]))),
    );
  }
  void initTimer() async {
    Timer(Duration(seconds: 2), () {
      Navigator.of(_context!).pushReplacement(
          MaterialPageRoute(builder: (context) => SignUp())
      );
    }
    );
  }
}
