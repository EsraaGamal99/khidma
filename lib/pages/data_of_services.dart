import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/main.dart';
import 'package:khidma/pages/order_details.dart';

class data_of_services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(title: AppBarContainer(),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              DataOfServices(
                name: 'سلمى علي',
                serviceType: "كهربائي",
                details: 'عرض التتفاصيل',
              ),
              DataOfServices(
                name: 'اماني عمرو',
                serviceType: "سباك",
                details: 'عرض التتفاصيل',
              ),
              DataOfServices(
                name: 'علاء حسن',
                serviceType: "مصمم واجهات زجاج",
                details: 'عرض التتفاصيل',
              ),
              DataOfServices(
                name: 'عمر خالد',
                serviceType: "كهربائي",
                details: 'عرض التتفاصيل',
              ),
              SizedBox(height: 15,),
              Center(
                child: InkWell(
                  onTap: (){
                    navigateTo(context, order_details());
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    child: Center(child: Text('اضافة طلب',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                    decoration: BoxDecoration(color: kContainerColor,borderRadius: BorderRadius.circular(15,),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
