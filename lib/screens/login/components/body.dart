import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/compnents/rounded_button.dart';
import 'package:login/screens/signup/signup_screen.dart';

import '../../../compnents/rounded_input_field.dart';
import '../../../compnents/rounded_password_field.dart';
import '../../../compnents/already_have_an_account_check.dart';
import './background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: size.height * .1, horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'دخول',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * .35,
          ),
          SizedBox(
            height: size.height * .02,
          ),
          RoundedInputField(
            hintText: 'البريد الالكتروني',
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: 'دخول',
            press: () {},
          ),
          SizedBox(
            height: size.height * .02,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SingUpScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    ));
  }
}
