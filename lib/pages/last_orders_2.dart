import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/client_home_Screen.dart';
import 'package:khidma/pages/data_of_presenter.dart';

class last_orders_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(title: AppBarContainer(),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            DataOfServices(
              onTap: (){
                navigateTo(context, data_of_presenter(),);
              },
              name: 'انت',
              serviceType: 'سباك',
              details: '150',
              show_presenters: true,
              color: Color(0xFFFFE800),
            ),
            Divider(

              color: Colors.black,
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'الطلبات الحالية',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
                right: 20,
                left: 20,
              ),
              child: GestureDetector(
                // onTap: () {
                //   navigateTo(
                //     context,
                //     widget,
                //   );
                // },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE800),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'انت',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                // navigateTo(
                                //   context,
                                //   widget,
                                // );
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'تمت المهمة بنجاح',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                height: 40,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: kTextColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      //Spacer(),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  'سباك',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              height: 40,
                              width: 205,
                              decoration: BoxDecoration(
                                color: kContainerColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 30,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Color(0xFFF99300),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  '100',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Center(
                        child: Text(
                          'مسح الكود',
                          style: TextStyle(
                            fontSize: 20,
                          //  fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      height: 40,
                      width: 205,
                      decoration: BoxDecoration(
                        color: kTextColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Image(
                    height:80 ,
                    width: 80,
                    image: AssetImage(
                      'assets/images/qr-code.png',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Center(
                        child: Text(
                          'تقييم الصنايعي',
                          style: TextStyle(
                            fontSize: 20,
                           // fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      height: 40,
                      width: 205,
                      decoration: BoxDecoration(
                        color: kTextColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                //Spacer(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Center(
                        child: Text(
                          'الابلاغ عن مشكلة',
                          style: TextStyle(
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      height: 40,
                      width: 205,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){
                navigateAndFinish(context, client_home_Screen(),);
              },
              child: Container(
                height: 70,
                width: double.infinity,
                padding: EdgeInsetsDirectional.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFF9D100),
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Center(child: Text('الصفحة الرئيسية',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
