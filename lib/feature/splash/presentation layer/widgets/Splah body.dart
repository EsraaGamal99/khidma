
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:khidma/pages/Select_screen.dart';
import 'package:khidma/utils/size_config.dart';


class SplahBody extends StatefulWidget {
  const SplahBody({Key? key}) : super(key: key);

  @override
  State<SplahBody> createState() => _SplahBodyState();
}

class _SplahBodyState extends State<SplahBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
        ),
       Image(image: AssetImage('assets/images/logo.png'),height: 200,width: 200,),
        Spacer(),

      ],
    ));
  }
}

void goToNextView() {
  Future.delayed(Duration(seconds: 3), () {
    Get.to(() => Select_Screen(), transition: Transition.fade);
  });
}
