import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/client_home_Screen.dart';
import 'package:khidma/pages/photo_of_theProblem.dart';
import 'package:khidma/pages/problem_description.dart';
import 'package:khidma/pages/select_location.dart';
import 'package:khidma/pages/show_presenters.dart';

class order_details extends StatelessWidget {
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(title: SecondAppBarContainer(),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: 330,
              height: 520,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kContainerColor),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ماذا تحتاج",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 50,
                            width: 230,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFE800),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'متوسط السعر من',
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFE800),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'الى',
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFE800),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'وصف الخدمة',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //Color(0xFFFFE800)
                      Container(
                        height: 45,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE800),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){
                          navigateTo(context, problem_photo(),);
                          print('Camera');
                        },
                        child: Row(children: [
                          Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFE800),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text(
                              'تصوير المشكلة',
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: (){},
                              child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.camera_alt_outlined),
                            iconSize: 50,
                          )),
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'العنوان',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){
                          navigateTo(context, select_location(),);
                          print('Location');
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                color: kTextColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'تحديد الموقع',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image(
                              image: AssetImage(
                                'assets/images/location2.png',
                              ),
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 45,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE800),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text(
                              'اضغط هنا لكتابة الموقع يدويا',
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    navigateTo(context, problem_description(),);
                  },
                  child: Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE800),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                          'تأكيد طلب الخدمة',
                        )),
                  ),
                ),
                SizedBox(width: 30,),
                InkWell(
                  onTap: (){
                    navigateAndFinish(context, client_home_Screen(),);
                  },
                  child: Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE800),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                          'إلغاء الطلب',
                        )),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
