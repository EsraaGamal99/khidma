import 'package:flutter/material.dart';
import 'package:khidma/Component/Full%20Data.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';

class presenter_home_screen extends StatelessWidget {
  const presenter_home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: AppBarContainer(),
      ),
      body: HomeScreen(text: 'نوع الخدمة التي تقدمها',context: context,widget: DataToCheck(),),
    );

  }
}
