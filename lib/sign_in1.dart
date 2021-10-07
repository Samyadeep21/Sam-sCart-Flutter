
import 'package:flutter/material.dart';
import 'package:music/success.dart';

class trial2 extends StatefulWidget {
  const trial2({Key? key}) : super(key: key);

  @override
  _trial2State createState() => _trial2State();
}

class _trial2State extends State<trial2> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  BuildContext? _context;

  bool passShow = false;

  @override
  Widget build(BuildContext context) {
    if (_context == null) {
      _context = context;
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
            onPressed: () {},
          ),
          title: Text(
            "Sign In",
            style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
          )),
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
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              SizedBox(
                height: 70,
              ),
              Center(
                child: Column(children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign in with email and password or create a new Account",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email :',
                      labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                      hintText: 'Enter valid email id as abc@gmail.com',
                      suffixIcon: Icon(Icons.email, color: Colors.grey.shade600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: !passShow,
                    decoration: InputDecoration(
                      labelText: 'Password :',
                      labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                      hintText: 'Enter secure password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passShow = !passShow;
                          });
                        },
                        icon: (passShow == true)
                            ? Icon(Icons.visibility, color: Colors.grey.shade600)
                            : Icon(Icons.visibility_off, color: Colors.grey.shade600),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(25.0),
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
                  height: 12.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),

                      backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                      // elevation: MaterialStateProperty.all(3),
                      shadowColor:
                      MaterialStateProperty.all(Colors.transparent),
                    ),

                    onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> success()));
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 60,
                        right: 60,
                        top: 10,
                        bottom: 10,
                      ),

                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),)
            ]),
          ),
        ),
      ),
    );
  }

}
