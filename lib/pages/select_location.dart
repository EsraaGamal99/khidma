import 'package:flutter/material.dart';
import 'package:khidma/constant.dart';

class select_location extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(),
      body: Center(child: Image(image: AssetImage('assets/images/location.png'),),),
    );
  }
}
