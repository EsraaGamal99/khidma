import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/presenter_home_screen.dart';

class instructions_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarContainer(),
      ),
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10,),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 330,
                height: 120,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'سيأتي اليك الصنايعي في الموعد المتفق عليه بينكم او سيتم التواصل معك لتحديد موعد الصيانة',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            chatItem(
              text: 'تم تحديد الموعد مسبقاً',
              access: MainAxisAlignment.end,
              color: kTextColor,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 330,
              height: 120,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'قم بإعطاء QR code  الخاص بك للعميل ليعاود الاتصال بك مجددا وبناء شبكة عملاء جدد',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/qr-code.png'),
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      showInformationDialog(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 40,
                        width: 200,
                        child: Center(child: Text('عرض الكود الخاص بك')),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15), color: kTextColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                        navigateAndFinish(context, presenter_home_screen(),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                      child: Container(
                        height: 40,
                        width: 100,
                        child: Center(child: Text('حـسـنـاً')),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15), color: kContainerColor,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 330,
              height: 120,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'خدمة .. ديماً معاك:  شكراً جداً لإستخدامك تطبيق خدمهوفي حال واجهتك اي مشاكل تواصل معنا عن طريق خدمة العملاء نحن في خدمتك في اي وقت',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.5,),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/inst1.png'),
                      height: 50,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage('assets/images/inst2.png'),
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 40,
                        width: 100,
                        child: Center(child: Text('تواصل معنا')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), color: kContainerColor,),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50,),
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Padding(

                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 40,
                        width: 100,
                        child: Center(child: Text('تقييم التطبيق')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), color: kContainerColor,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: InkWell(
                onTap: (){
                  navigateAndFinish(context, presenter_home_screen(),);
                },
                child: Container(
                  height: 40,
                  width: 200,
                  child: Center(child: Text('العوده للصفحه الرئيسيه',style: TextStyle(color: Colors.black,))),
                  decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(15),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  var formKey = GlobalKey<FormState>();

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              backgroundColor: kContainerColor,
              content: Form(
                key: formKey,
                child: Image(image: AssetImage('assets/images/qr-code.png',),width: 150,height: 150,),
              ),
              actions: <Widget>[
                Align(alignment: AlignmentDirectional.topEnd,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.close_rounded,color: Colors.white,size: 25,weight: 25,),
                    decoration: BoxDecoration(
                      color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(25),),),
                  ),
                ),
                //navigator.of(context).pop();
              ],
            );
          });
        });
  }
}
