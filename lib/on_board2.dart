import 'package:flutter/material.dart';
import 'package:music/sign_in1.dart';
import 'package:music/slide_model.dart';

class splash2 extends StatefulWidget {
  const splash2({Key? key}) : super(key: key);

  @override
  _splash2State createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  List<String> images = [
    "asset/images/cart1.jpg",
    "asset/images/cart2.png",
    "asset/images/cart3.jpg",
  ];
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
    // slides = getSlides();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome to Sam's cart"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: images.length,
                itemBuilder: (context, index) {
                  // contents of slider
                  return Slider(
                    image: images[index],
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            color: Colors.green,
            child: ElevatedButton(
              child:
                  Text(currentIndex == images.length - 1 ? "Continue" : "Next"),
              onPressed: () {
                if (currentIndex == images.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => trial2()),
                  );
                }
                _controller.nextPage(
                    duration: Duration(milliseconds: 10),
                    curve: Curves.bounceIn);
              },
              // textColor: Colors.white,
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  // container created for dots
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green,
      ),
    );
  }
}

// ignore: must_be_immutable
// slider declared
class Slider extends StatelessWidget {
  String image;

  Slider({required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // contains container
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // image given in slider
            Image(image: AssetImage(image)),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
