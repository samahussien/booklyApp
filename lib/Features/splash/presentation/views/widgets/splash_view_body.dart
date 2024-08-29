import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidingAnimation;
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
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
          const SizedBox(
            height: 4,
          ),
          SlidingText(slidingAnimation: slidingAnimation)
        ]);
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween(begin: const Offset(0, 2), end: const Offset(0, 0))
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(kTransitionDuration, () {
      Get.to(() => const HomePage(),
          transition: Transition.fade, duration: kTransitionDuration);
    });
  }
}
