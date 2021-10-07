import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/sign_in1.dart';

class splash extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  List<String> images = [
    "asset/images/cart1.jpg",
    "asset/images/cart2.png",
    "asset/images/cart3.jpg",
  ];

  BuildContext? _context;
  @override
  Widget build(BuildContext context) {
    if (_context == null) {
      _context = context;
    }

    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
                child: Column(children: [
      Container(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                SizedBox(
                  height: 70,
                ),
                Center(
                    child: Column(children: [
                  Text(
                    "Sam's Cart",
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Welcome to Sam's Cart let's shop together",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                      // Expanded(
                      //     child: PageView(
                      //       scrollDirection: Axis.horizontal,
                      //
                      //     ),),

                  SizedBox(
                    height: 52.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 5.0)
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.deepOrange.shade600,
                          Colors.deepOrange.shade400,
                        ],
                      ),
                      color: Colors.deepOrange.shade500,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => trial2()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 60,
                          right: 60,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]))
              ])))
    ]))));
  }
}
