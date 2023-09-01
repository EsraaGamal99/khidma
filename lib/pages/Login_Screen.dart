import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/client_home_Screen.dart';
import 'package:khidma/pages/Select_screen.dart';
import 'package:khidma/pages/data_of_services.dart';
import 'package:khidma/pages/presenter_home_screen.dart';

class Login_Screen extends StatelessWidget {

var type=Select_Screen().type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: (){},
            child: Container(
              width: 80,
              height: 40,
              child: Center(
                child: Text(
                  'لغة التطبيق',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: kContainerColor,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            ),
          ),
        ),],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20,),
              Column(

                children: [
                  Center(child: Image(image: AssetImage('assets/images/khidma.png'),height: 100,width:400, )),
                  Center(child: Image(image: AssetImage('assets/images/khidma2.png'),height: 100,width:400, )),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0,top: 15,),
                child: Row(children: [
                  Expanded(child: Text('رقم الهاتف',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),)),
                  SizedBox(width: 15,),
                  Container(
                    width: 200,
                    height: 40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: kContainerColor,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0,top: 15,bottom: 20,),
                child: Row(children: [
                  Expanded(
                    child: Text('كلمة المرور'
                        '',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    width: 200,
                    height: 40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: kContainerColor,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ],),
              ),
              InkWell(
                onTap: (){
                  if(type=='client') navigateAndFinish(context, data_of_services(),);
                  if(type=='presenter') navigateAndFinish(context, data_of_services(),);

                },
                child: Center(
                  child: Container(
                    width: 150,
                    height: 40,
                    child: Center(
                      child: Text(
                        'تـسـجيـل الـدخـول',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.white,thickness: 1.5),
              Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 40,
                        child: Center(
                          child: InkWell(
                            onTap: (){},
                            child: Text(
                              'انشاء حساب',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: kContainerColor,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 50,),
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 40,
                        child: Center(
                          child: InkWell(
                            onTap: (){},
                            child: Text(
                              'مشاركة التطبيق',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: kContainerColor,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(child: Image(image: AssetImage('assets/images/login.png'),height:250 ,width:250 ,),),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 40,
                      child: Center(
                        child: InkWell(
                          onTap: (){},
                          child: Text(
                            'تواصل معنا',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
