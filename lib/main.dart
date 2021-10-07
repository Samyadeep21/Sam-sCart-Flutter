import 'package:flutter/material.dart';
import 'package:music/on_board_screen.dart';
import 'package:music/sign_in1.dart';
import 'package:music/sign_up.dart';

import 'on_board2.dart';
void main()async{
runApp(SamCart());
}
class SamCart extends StatelessWidget {
  const SamCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.black,
          // selectionColor: darkPrimarySwatchColor,
          // selectionHandleColor: darkPrimarySwatchColor,
        ),
      ),
      home: splash2(),
    );
  }
}
