
import 'package:flutter/material.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/feature/splash/presentation%20layer/widgets/Splah%20body.dart';


class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body:SplahBody(),
    );
  }
}
