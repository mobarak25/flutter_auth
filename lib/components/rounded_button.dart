import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  // final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    // required this.press,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          shadowColor: null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
