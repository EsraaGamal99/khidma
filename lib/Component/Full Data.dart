import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/problem_description.dart';

class DataToCheck extends StatelessWidget {
TextEditingController nameController = TextEditingController();
TextEditingController serviceController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start  ,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'برجاء ادخال البيانات الخاصة بك',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,

                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'الاسم ثلاثي',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                height: 50,
                width: 230,
                decoration: BoxDecoration(
                  color: Color(0xFFFFE800),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '    التخصص /الصنعة',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                height: 50,
                width: 230,
                decoration: BoxDecoration(
                  color: Color(0xFFFFE800),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: serviceController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                ' العنوان بالتفصيل',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                height: 50,
                width: 230,
                decoration: BoxDecoration(
                  color: Color(0xFFFFE800),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: addressController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('العمر ',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              Container(
                height: 50,
                width: 230,
                decoration: BoxDecoration(
                  color: Color(0xFFFFE800),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      navigateTo(context, problem_description(),);
                    },
                    child: Text(
                      'تأكيد',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFC1FF72),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'عودة',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFC1FF72),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
