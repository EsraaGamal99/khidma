import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';
import 'package:khidma/pages/comments_screen.dart';

class common_questions extends StatelessWidget {
  const common_questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      child: Center(
                          child: IconButton(
                        onPressed: () {},
                        icon: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                            weight: 50,
                          ),
                        ),
                      )),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: kContainerColor,
                      ),
                    ),
                  ),
                ],
              ),
              QuestionItem(
                name: 'سمير علي',
                question: 'هو تسريب السخان سببه ايه وبيتحل ازاي؟',
                context: context,
              ),
              QuestionItem(
                name: 'عمر عصام',
                question: 'حد يعرف مكان كويس بيبيع ادوات كهربائية بسعر كويس؟؟',
                context: context,
              ),
              QuestionItem(
                name: 'اسماء علاء',
                question: 'عندي مشكلة مع البوتاجاز ديماً بيهب اعمل ايه؟؟',
                context: context,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
