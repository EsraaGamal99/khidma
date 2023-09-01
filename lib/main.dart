import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/Login_Screen.dart';
import 'package:khidma/pages/Select_screen.dart';
import 'package:khidma/pages/app_details.dart';
import 'package:khidma/pages/chat_screen.dart';
import 'package:khidma/pages/client_home_Screen.dart';
import 'package:khidma/pages/comments_screen.dart';
import 'package:khidma/pages/common_questions.dart';
import 'package:khidma/pages/data_of_presenter.dart';
import 'package:khidma/pages/hassan_chat.dart';
import 'package:khidma/pages/instructions_screen.dart';
import 'package:khidma/pages/last_orders_2.dart';
import 'package:khidma/pages/my_last_orders.dart';
import 'package:khidma/pages/order_details.dart';
import 'package:khidma/pages/presenter_home_screen.dart';
import 'package:khidma/pages/problem_description.dart';
import 'package:khidma/pages/data_of_services.dart';
import 'package:khidma/pages/popUp.dart';
import 'package:khidma/pages/select_location.dart';
import 'package:khidma/pages/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme:
      AppBarTheme(
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kPrimaryColor,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      ),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      home: Setting_screen(),
      //my_last_orders
    );
  }
}

class test extends StatelessWidget {
TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          DescribeTheProblem(
            name: 'حسن محمود',
            price: '150',
            address: 'سوهاج - جرجا - شارع البنك',
            priceController: priceController,
          ),
        ],
      ),
    );
  }
}
