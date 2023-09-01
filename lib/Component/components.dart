import 'package:flutter/material.dart';
import 'package:khidma/Component/Full%20Data.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/chat_screen.dart';
import 'package:khidma/pages/client_home_Screen.dart';
import 'package:khidma/pages/comments_screen.dart';
import 'package:khidma/pages/common_questions.dart';
import 'package:khidma/pages/last_orders_2.dart';
import 'package:khidma/pages/setting_screen.dart';

Widget AppBarContainer() => Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              //margin: EdgeInsets.all(24),
              width: 250,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 100,
                    height: 100,
                  )),
                  Center(
                    child: Text(
                      'خدمة ... دايما معاك',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

Widget SecondAppBarContainer() => Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              width: 350,
              //margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          'خدمة .. مفيش اعطال هتعطلك',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 60,
                      height: 70,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

Widget HomeScreen({required text, context, widget}) => Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: 'كاميرات مراقبة',
                text2: "عدد العمال في هذه الخدمه:130 ",
                text3: 'عدد الطلبات:314',
                image: 'assets/images/camera.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: 'فني فلاتر',
                text2: "عدد العمال في هذه الخدمه:103 ",
                text3: 'عدد الطلبات:99',
                image: 'assets/images/filter.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: 'صيانة مصاعد ',
                text2: "عدد العمال في هذه الخدمه:90 ",
                text3: 'عدد الطلبات:75',
                image: 'assets/images/hotter.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: 'نقاش',
                text2: "عدد العمال في هذه الخدمه:34 ",
                text3: 'عدد الطلبات1126',
                image: 'assets/images/naqash.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: 'محارة',
                text2: "عدد العمال في هذه الخدمه:18 ",
                text3: 'عدد الطلبات:18   ',
                image: 'assets/images/mahar.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: ' سباك',
                text2: "عدد العمال في هذه الخدمه:130 ",
                text3: ' عدد الطلبات:205  ',
                image: 'assets/images/sabak.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: ' كهربائي',
                text2: "عدد العمال في هذه الخدمه:103 ",
                text3: '    عدد الطلبات:99',
                image: 'assets/images/electric.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: 'نجار',
                text2: "عدد العمال في هذه الخدمه:90 ",
                text3: 'عدد الطلبات:75',
                image: 'assets/images/carbenter.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: 'حداد',
                text2: "عدد العمال في هذه الخدمه:34 ",
                text3: ' عدد الطلبات112',
                image: 'assets/images/hdad.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: 'تصليح دش وتلفزيون',
                text2: "عدد العمال في هذه الخدمه:18 ",
                text3: ' عدد الطلبات:18',
                image: 'assets/images/tvDish.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, widget);
              },
              child: kContainer(
                text: 'صيانة مكيفات',
                text2: "عدد العمال في هذه الخدمه:90",
                text3: 'عدد الطلبات:5',
                image: 'assets/images/colder.png',
              ),
            ),
          ],
        ),
      ),
    );

Widget DataOfServices({
  context,
  widget,
  void Function()? onTap,
  required name,
  required serviceType,
  Color color = kPrimaryLightColor,
  String? details,
  bool show_presenters = false,
}) =>
    Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        right: 20,
        left: 20,
      ),
      child: GestureDetector(
        onTap: () {
          navigateTo(
            context,
            widget,
          );
        },
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    if (show_presenters == true)
                      InkWell(
                        onTap: onTap,
                        child: Container(
                          child: Center(
                            child: Text(
                              'عرض المتقدمين للتصليح',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          height: 40,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Color(0xFFF99300),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              //Spacer(),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          serviceType,
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
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xFFF99300),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          details!,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

Widget CustomBottomNavBar({context}) => Container(
      height: 70,
      padding: EdgeInsetsDirectional.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadiusDirectional.all(
          Radius.circular(15.0),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              child: Center(
                child: Text(
                  'الاعدادات',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                navigateTo(
                  context,
                  Setting_screen(),
                );
              },
            ),
          ),
          VerticalDivider(
            color: Colors.white,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                navigateTo(
                  context,
                  common_questions(),
                );
              },
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'المجتمع:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'عرض الاسئلة الشائعة',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.white,
          ),
          Expanded(
            child: InkWell(
                onTap: () {
                  navigateTo(
                    context,
                    last_orders_2(),
                  );
                },
                child: Center(
                  child: Text(
                    'طلباتي السابقة',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),
          VerticalDivider(
            color: Colors.white,
          ),
          Expanded(
            child: InkWell(
                onTap: () {
                  navigateTo(
                    context,
                    client_home_Screen(),
                  );
                },
                child: Center(
                  child: Text(
                    'اضافة طلب',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );

Widget DataOfPresenter(
        {context,
        widget,
        required name,
        required serviceType,
        required price,
        required address,
        required image,
          void Function()? onTap,
        required numOfLastService,
        void Function()? onPressed}) =>
    Padding(
      padding: const EdgeInsets.all(
        20,
      ),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          padding: EdgeInsets.all(10),
          width: 330,
          height: 250,
          decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          serviceType,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          address,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  //Spacer(),
                  Expanded(
                    child: Container(
                      height: 45,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE800),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'السعرالمقترح : $price',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'التقييم',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image(
                          image: AssetImage(
                            image,
                          ),
                          height: 60,
                          width: 60,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'عمليات سابقة',
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          numOfLastService,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: onTap,
                      child: Column(
                        children: [
                          Text(
                            'فتح الدردشات',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          IconButton(
                            iconSize: 40,
                            onPressed: onPressed,
                            icon: Icon(
                              color: Colors.white,
                              Icons.chat_bubble,
                            ),
                          ),
                        ],
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

Widget DescribeTheProblem(
        {context,
        widget,
        required name,
        required price,
        required address,
        required priceController,
        void Function()? onTap,
        void Function()? onTap2,
        void Function()? onPressed}) =>
    Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: GestureDetector(
        onTap: () {
          navigateTo(
            context,
            widget,
          );
        },
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            width: 700,
            height: 290,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              border: Border.all(
                color: kContainerColor,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //name
                            Text(
                              name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            //address
                            Text(
                              'العنوان:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            //address
                            Text(
                              address,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //Spacer(),
                      Column(
                        children: [
                          Text(
                            'وصف المشكلة بالتفصيل',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: onTap,
                            child: Container(
                              height: 45,
                              width: 80,
                              decoration: BoxDecoration(
                                color: kContainerColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'عرض الوصف',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  // style: TextStyle(
                                  //   fontSize: 15,
                                  //   fontWeight: FontWeight.bold,
                                  // ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(children: [
                    InkWell(
                      onTap: onTap2,
                      child: Container(
                        height: 40,
                        width: 100,
                        child: Center(
                          child: Text(
                            'تقديم طلب تنفيذ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE800),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        width: 100,
                        child: Center(
                          child: TextField(
                            onTap: () {},
                            controller: priceController,
                            decoration: InputDecoration(
                              label: Center(
                                  child: Text(
                                'عرض سعر اخر',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE800),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'السعر بحد اقصى',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            child: Center(
                              child: Text(
                                price,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: kContainerColor,
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  onChange,
  onTap,
  bool isPassword = false,
  required String? Function(String?)? validate,
  required String label,
  IconData? prefix,
  IconData? suffix,
  void Function()? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );

Widget QuestionItem({
  required name,
  required question,
  context,
  String text1 = 'التوصية بصنايعي',
  String text2 = 'تقديم خدمة تصليح',
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Container(
          height: 100,
          width: 600,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            color: kContainerColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(question,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color(0xFFFFA92B),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      text1,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color(0xFFFFA92B),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      text2,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  navigateTo(
                    context,
                    comments_Screen(),
                  );
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Color(0xFFFFA92B),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'التعليقات',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );

Widget AnswerItem({required answer}) => Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFF9D100),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Text(
            answer,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );

Widget kContainer(
        {required image,
        required text,
        required text2,
        required text3,
        context}) =>
    GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DataToCheck()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Image(
                  image: AssetImage(image),
                  height: 120,
                  width: 120,
                ),
              ],
            ),
            // SizedBox(
            //   width: 5,
            // ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    text3,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

Widget chatItem({
  required text,
  required access,
  color = Colors.white,
}) =>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: access,
        children: [
          Container(
            padding: EdgeInsetsDirectional.symmetric(
              vertical: 5.0,
              horizontal: 10.0,
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadiusDirectional.all(
                Radius.circular(15.0),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );

void navigateTo(context, widget) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  });
}

void navigateAndFinish(context, widget) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false);
}
