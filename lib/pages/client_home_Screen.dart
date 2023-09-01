import 'package:flutter/material.dart';

import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';

class client_home_Screen extends StatelessWidget {
  const client_home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
    appBar: AppBar(
      title: AppBarContainer(),
    ),
    body: HomeScreen(text: 'نوع الخدمة التي تحتاجها'),
    );
  }
}
