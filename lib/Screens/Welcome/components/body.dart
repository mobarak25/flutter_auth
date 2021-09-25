import 'package:flutter/material.dart';

import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This size provide us total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.2,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WELCOME TO EDU",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 50,
                ),
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: size.height * 0.4,
                ),
                SizedBox(height: size.height * 0.03),
                RoundedButton(
                  text: "LOGIN",
                  color: kPrimaryColor,
                  textColor: Colors.white,
                ),
                RoundedButton(
                  text: "REGISTER",
                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
