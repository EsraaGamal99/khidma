import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';

class app_details extends StatelessWidget {
  const app_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(title: SecondAppBarContainer(),),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: 40,
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
                child: Text(
                  'سيأتي اليك الصنايعي في الموعد المتفق عليه بينكم او سيتم التواصل معك لتحديد موعد الصيانة',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                        'قم بمسح QR Code الموجود مع الصنايعي وارساله على التطبيق وفي حالة حدوث اي مشكلة هذا الكود يحفظ لك حقك',
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
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 330,
              height: 130,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    Text(
                      'خدمة:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        'نشكرك جداً على التعامل معنا ونحن في خدمتك دائماً نعمل على تحسين خدمتنا',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text('خدمة العملاء')),
                    ),
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage(
                      'assets/images/appDetails.png',
                    ),
                    height: 150,
                    width: 150,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: kTextColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text('متابعة')),
                    ),
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
