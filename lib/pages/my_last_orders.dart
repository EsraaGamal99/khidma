import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';

class my_last_orders extends StatelessWidget {
  const my_last_orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(title: AppBarContainer(),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
              child: DataOfServices(
                  name: 'سلمى علي',
                  serviceType: 'كهربائي',
                  details: 'تصليحات ثقيلة'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
              child: DataOfServices(
                  name: 'اماني عمرو',
                  serviceType: 'سباك',
                  details: 'تصليحات متوسطة'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
              child: DataOfServices(
                  name: 'علاء حسن',
                  serviceType: 'مصمم واجهات زجاج',
                  details: 'تصليحات متوسطة'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
              child: DataOfServices(
                  name: 'عمر خالد',
                  serviceType: 'كهربائي',
                  details: 'تصليحات خفيفة'),
            ),
            CustomBottomNavBar(),
          ],
        ),
      ),
    );
  }
}
