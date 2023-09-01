import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/chat_screen.dart';

class data_of_presenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(title: AppBarContainer(),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            DataOfPresenter(
              onTap: (){
                navigateTo(context, chat_screen(),);
              },
                name: 'خالد ابو علي',
                serviceType: 'سباك',
                price: '100',
                address: 'القاهرة - شبرا الخيمة - شارع 13',
                image: 'assets/images/rating5.png',
                numOfLastService: '113'),
            DataOfPresenter(
              onTap: (){
                navigateTo(context, chat_screen(),);
              },
                name: 'الحسيني احمد',
                serviceType: 'سباك',
                price: '130',
                address: 'القاهرة - شبرا الخيمة - شارع البنك',
                image: 'assets/images/rating.png',
                numOfLastService: '175',
              onPressed: () {
                navigateTo(context, chat_screen(),);
              },
            ),
            DataOfPresenter(
                onTap: (){
                  navigateTo(context, chat_screen(),);
                },
                name: 'محمود حسن',
                serviceType: 'سباك',
                price: '150',
                address: 'القاهرة - شبرا الخيمة - الساحة',
                image: 'assets/images/rating5.png',
                numOfLastService: '301'),

          ],
        ),
      ),
    );
  }
}
