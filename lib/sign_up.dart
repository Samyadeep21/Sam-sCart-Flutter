import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: Padding(
          padding: EdgeInsets.only(left: 28),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Don't have an account?",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: (){
              },
              child: Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
        ),
      ),
      body: Container(
        height: 750,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                // begin: Alignment.topCenter,
                // end: Alignment.bottomCenter,
                colors: [
              Colors.lightBlue.shade200,
              Colors.lightBlue.shade800
            ])),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              SizedBox(
                height: 150,
              ),
              Text('Sign in to your account',
                 textAlign: TextAlign.start,
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 50,
                   ),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor:
                  Colors.grey.shade100,
                  // transparent,
                  // blueGrey.shade100,
                  filled: true,
                  hintText: 'Email :',
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor:
                  Colors.grey.shade100,
                  filled: true,
                  hintText: 'password :',
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'Forget your password?',
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){},
                  child: Container(

                    padding: EdgeInsets.only(
                      left: 90,
                      right: 90,
                      top: 8,
                      bottom: 8,
                    ),
                  child: Text('LOGIN',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey.shade100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                 ),
              ),

            ]),
          ),
        ),
      ),
    );
  }
}
