import 'package:booklyapp/core/utls/approuter.dart';
import 'package:booklyapp/core/utls/assets.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/slidingtext.dart';

class Splachviewbody extends StatefulWidget {
  const Splachviewbody({super.key});

  @override
  State<Splachviewbody> createState() => _SplachviewbodyState();
}

class _SplachviewbodyState extends State<Splachviewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initanimation();
    navigatetohome();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        slidinganimtetedbuilder(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initanimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void navigatetohome() {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).push(Approuter.homescreen);
    });
  }
}
