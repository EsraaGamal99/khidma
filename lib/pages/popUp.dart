import 'package:flutter/material.dart';
import 'package:khidma/constant.dart';

class popUp_screen extends StatefulWidget {
  const popUp_screen({super.key});

  @override
  State<popUp_screen> createState() => _popUp_screenState();
}

class _popUp_screenState extends State<popUp_screen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              color: Colors.white,
              onPressed: () async {
                await showInformationDialog(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
