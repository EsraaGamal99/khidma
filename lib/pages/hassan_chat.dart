import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/instructions_screen.dart';

class HassanChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 60,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('حسن محمود',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,)),
              ),
            ),
          ),
        ],
      ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 25,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text(
                          'كهربائي',
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
                        color: Color(0xFFF99300),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'السعر المعروض للتفاوض 130',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      height: 52,
                      width: 205,
                      decoration: BoxDecoration(
                        color: Color(0xFFF99300),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){

                      },
                      child: InkWell(
                        onTap: (){
                          navigateTo(context, instructions_screen(),);
                        },
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'تم الاتفاق',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.handshake_rounded,
                                  color: Colors.deepOrange,
                                ),
                              ],
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
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            chatItem(text: 'هتكون موجود امتى يفندم',access: MainAxisAlignment.start,),
            chatItem(access: MainAxisAlignment.end,text:'في انتظارك انهاردة' ),
            chatItem(text: 'خلاص جايلك الساعة 6',access: MainAxisAlignment.start,),
            chatItem(access: MainAxisAlignment.end,text:'تمام .. هتكلف كام' ),
            chatItem(text: 'هصلحهالك ب 130',access: MainAxisAlignment.start,),
            chatItem(access: MainAxisAlignment.end,text:'تمام ' ),
            chatItem(text: 'دا رقمي للتواصل 0123456789',access: MainAxisAlignment.start,),
            SizedBox(height: 65,),
            Container(
              width: double.infinity,
              color: Colors.white,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(label: Text('اضغط هنا للكتابة',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
