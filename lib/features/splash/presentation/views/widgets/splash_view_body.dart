import 'package:ebookapp/core/utils/app_router.dart';
import 'package:ebookapp/core/utils/assets.dart';
import 'package:ebookapp/features/splash/presentation/views/widgets/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset>
      slidingAnimation; // offset is value coordinations on dx and dy

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

// dispose by2fl el controller b3d est5damo 3shan memory lack;
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
        AnimatedText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 12), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(
        //   () => const HomeView(),
        //   transition: Transition.fade,
        //   duration: KTransitionDuration,
        // );
        GoRouter.of(context).push(AppRouter.KHomeView);
      },
    );
  }
}
