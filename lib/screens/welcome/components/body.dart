import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/constants.dart';
import '/screens/login/login_screen.dart';
import '../../signup/signup_screen.dart';
import '../../../compnents/rounded_button.dart';

import './background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // give the height of the screen and the width also
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'مرحبا بك في تطبيق اشرف',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * .45,
            ),
            const SizedBox(
              height: 30,
            ),
            RoundedButton(
              text: 'دخول ',
              color: KPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: 'تسجيل حساب جديد ',
              color: kPrimaryLightColors,
              textColor: Colors.black87,
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
            ),
          ],
        ),
      ),
    );
  }
}
