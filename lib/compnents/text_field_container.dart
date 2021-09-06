import 'package:flutter/material.dart';

import '../constants.dart';

class TextFeildContainer extends StatelessWidget {
  final Widget? child;
  const TextFeildContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color: kPrimaryLightColors,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
