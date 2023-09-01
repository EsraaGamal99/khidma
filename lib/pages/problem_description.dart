import 'package:flutter/material.dart';
import 'package:khidma/Component/Full%20Data.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/hassan_chat.dart';

class problem_description extends StatelessWidget {
  TextEditingController priceController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
        title: AppBarContainer(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0,),
                  child: Container(
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text('كهربائي',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ))),
                    decoration: BoxDecoration(
                      color: kContainerColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                DescribeTheProblem(
                  onTap: (){
                    showInformationDialog(context);
                  },
                  onTap2: (){
                    navigateTo(context, HassanChat(),);
                  },
                  name: 'حسن محمود',
                  price: '150',
                  address: 'سوهاج - جرجا - شارع البنك',
                  priceController: priceController,
                ),
                DescribeTheProblem(
                  onTap: (){
                    showInformationDialog(context);
                  },
                  onTap2: (){
                    navigateTo(context, HassanChat(),);
                  },
                  name: 'ندى عابدين',
                  price: '120',
                  address: 'القاهرة - رمسيس',
                  priceController: priceController,
                ),
                DescribeTheProblem(
                  onTap2: (){
                    navigateTo(context, HassanChat(),);
                  },
                  onTap: (){
                    showInformationDialog(context);
                  },
                  name: 'اميرة عبدالسلام',
                  price: '120',
                  address: 'المنيا - مركز التطوير الطبي',
                  priceController: priceController,
                ),
                DescribeTheProblem(
                  onTap2: (){
                    navigateTo(context, HassanChat(),);
                  },
                  onTap: (){
                    showInformationDialog(context);
                  },
                  name: 'عمر السيد',
                  price: '100',
                  address: 'قنا - دشنا - الكوبري الجديد',
                  priceController: priceController,
                ),
                SizedBox(height: 20,),
                CustomBottomNavBar(),
              ],
            ),
          ),
        ));
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 40,
                      child: Center(child: Text('وصف المشكلة',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),)),
                      decoration: BoxDecoration(color: Color(0xFFF9D100),borderRadius: BorderRadius.circular(15,),),
                    ),
                    SizedBox(height: 10,),
                    Divider(color: Color(0xFFF9D100),thickness: 5,),
                    SizedBox(height: 10,),
                    Text(' قفله في الڤيوز والوصلات الرئيسيه بسبب قفله حصلت في الغساله',),
                    SizedBox(height: 10,),
                    Divider(color: Color(0xFFF9D100),thickness: 5,),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(child: Image(image: AssetImage('assets/images/d2.png',),width:100 ,height: 100,),),
                        Expanded(child: Image(image: AssetImage('assets/images/d1.png',),height: 100,width: 100,),),
                      ],
                    ),
                  ],
                ),
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
