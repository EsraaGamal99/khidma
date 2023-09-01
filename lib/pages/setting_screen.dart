import 'package:flutter/material.dart';
import 'package:khidma/constant.dart';

class Setting_screen extends StatelessWidget {
  const Setting_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: kPrimaryLightColor,
      child: ListView(
        children: [
          DrawerHeader(

            child:Row(
              children: [
                Text('الاعدادات',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),),
                SizedBox(width: 10,),
                Icon(Icons.settings_suggest_rounded,size: 30,color: Colors.black,),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),

          ListTile(
            leading:IconButton(
              icon: Icon(Icons.perm_contact_cal_sharp,size: 30,color: Colors.black,),
              onPressed: () {},
            ),
            title: Text(
              'الملف الشخصي',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),



          ),
          SizedBox(height: 20,),
          ListTile(
            leading:IconButton(
              icon: Icon(Icons.paste_outlined,size: 30,color: Colors.black,),
              onPressed: () {},
            ),
            title: Text(
              'عرض العمليات السابقة',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),



          ),
          SizedBox(height: 20,),
          ListTile(
            leading:Image(image: AssetImage('assets/images/ratingg.png',),width: 100,),
            title: TextButton(child: Text(
              'تبديل الحساب',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),

            ),
              onPressed: () {},
            ),



          ),
          SizedBox(height: 20,),
          ListTile(
            leading:Image(image: AssetImage('assets/images/lang.png',),),
            title: Text(
              'لغة التطبيق',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),



          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          ListTile(
            leading:Image(image: AssetImage('assets/images/inst2.png',),),
            title: Text(
              'تواصل معنا',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),



          ),
          SizedBox(
            height: 20,
          ),


          ListTile(
            leading:Image(image: AssetImage('assets/images/share.png',),),
            title: Text(
              'مشاركة التطبيق',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),



          ),
          SizedBox(height: 20,),
          ListTile(
            leading:Image(image: AssetImage('assets/images/ratingg.png',),width: 100,),
            title: Text(
              'تقييم التطبيق',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),



          ),
        ],    ),
    )

    ;

  }
}
