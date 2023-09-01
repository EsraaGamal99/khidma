import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';

class show_presenters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(title: AppBarContainer(),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DataOfServices(
              name: 'انت',
              serviceType: 'سباك',
              show_presenters: true,
              details: 'تصليحات متوسطة',
              context: context,
             // widget: ,
            ),
            DataOfServices(
              name: 'اماني عمرو',
              serviceType: 'سباك',
              show_presenters: false,
              details: 'تصليحات متوسطة',
              context: context,
            ),
            DataOfServices(
              name: 'علاء حسن',
              serviceType: 'سباك',
              show_presenters: false,
              details: 'تصليحات متوسطة',
              context: context,
            ),
            DataOfServices(
              name: 'عمر خالد',
              serviceType: 'سباك',
              show_presenters: false,
              details: 'تصليحات متوسطة',
              context: context,
            ),

          ],
        ),
      ),
    );
  }
}
