import 'package:flutter/material.dart';
import 'package:khidma/Component/components.dart';
import 'package:khidma/constant.dart';

class comments_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: AppBarContainer(),
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: QuestionItem(
                name: 'سمير علي',
                question: 'هو تسريب السخان سببه ايه وبيتحل ازاي؟',
                text1: 'لديك نفس المشكلة',
                text2: 'اقتراح حل',
                context: context,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
                bottom: 20,
              ),
              child: Container(
                height: 600,
                width: 600,
                decoration: BoxDecoration(
                  color: kContainerColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnswerItem(answer: 'افصله بسرعة كدة ممكن يكهرب اي حد',),
                      SizedBox(height: 10,),
                      AnswerItem(answer: 'كلم صنايعي احسنلك او اقفل مصدر التسريب بسيليكون لو عندك',),
                      SizedBox(height: 10,),
                      AnswerItem(answer: 'اقفله بسيليكون',),
                      SizedBox(height: 10,),
                      AnswerItem(answer: 'ممكن لو عندك لحام او سيليكون بس الافضل شوف صنايعي  ',),
                      SizedBox(height: 10,),
                      AnswerItem(answer: 'سيليكون او لحام',),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
