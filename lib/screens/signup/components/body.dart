import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/compnents/already_have_an_account_check.dart';
import 'package:login/compnents/rounded_button.dart';
import 'package:login/compnents/rounded_input_field.dart';
import 'package:login/compnents/rounded_password_field.dart';
import './social_icon.dart';

import 'package:login/screens/login/login_screen.dart';
import './or_divider.dart';
import './background.dart';

class Body extends StatelessWidget {
  final Widget? child;
  const Body({Key? key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'تسجيل حساب جديد',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: size.height * .02),
              SvgPicture.asset(
                'assets/icons/signup.svg',
                height: size.height * .35,
              ),
              SizedBox(height: size.height * .02),
              RoundedInputField(
                hintText: 'البريد الالكتروني',
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * .02),
              RoundedButton(
                text: 'تسجيل حساب',
                press: () {},
              ),
              SizedBox(height: size.height * .02),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    iconSrc: 'assets/icons/facebook.svg',
                    press: () {
                      print('hello');
                    },
                  ),
                  SocialIcon(
                    iconSrc: 'assets/icons/twitter.svg',
                    press: () {
                      print('hello');
                    },
                  ),
                  SocialIcon(
                    iconSrc: 'assets/icons/Google-plus.svg',
                    press: () {
                      print('hello');
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
