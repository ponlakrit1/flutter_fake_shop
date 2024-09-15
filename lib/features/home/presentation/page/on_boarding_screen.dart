import 'package:flutter/material.dart';
import 'package:flutter_fake_shop/core/theme/app_color.dart';
import 'package:flutter_fake_shop/core/theme/text_theme_extension.dart';
import 'package:flutter_fake_shop/core/widget/fs_button.dart';
import 'package:flutter_fake_shop/features/home/presentation/page/bottom_navigator_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = '/on_boarding';

  OnBoardingScreen({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(BuildContext context) {
    context.goNamed(BottomNavigatorScreen.routeName);
  }

  Widget _buildIntroductionImage(int seq) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        'assets/images/on_boarding/on_boarding$seq.png',
        width: 350.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: Theme.of(context).textTheme.h1,
      bodyTextStyle: Theme.of(context).textTheme.p3,
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: IntroductionScreen(
            key: introKey,
            pages: [
              PageViewModel(
                title: "Free & Fun Trade",
                body:
                    "No more buying stuff! Here,  you can trade anything with friends and community for free.",
                image: _buildIntroductionImage(3),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "Literally Anything!",
                body: "Just pick & choose and offer the deal to your friends.",
                image: _buildIntroductionImage(4),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "Kids and teens",
                body:
                    "Kids and teens can track their stocks and place trades that you approve.",
                image: _buildIntroductionImage(1),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "Let's trade",
                body: "Exchange your experience with other people",
                image: _buildIntroductionImage(2),
                footer: FsButton(
                  buttonColor: AppColor.primary,
                  onPressed: () => introKey.currentState?.animateScroll(0),
                  label: 'Back to first',
                ),
                decoration: pageDecoration,
              ),
            ],
            onDone: () => _onIntroEnd(context),
            onSkip: () => _onIntroEnd(context),
            showSkipButton: true,
            nextFlex: 0,
            skip: Text(
              'Skip',
              style: Theme.of(context).textTheme.h6,
            ),
            next: const Icon(
              Icons.arrow_forward,
              size: 21.0,
            ),
            done: Text(
              'Done',
              style: Theme.of(context).textTheme.h6,
            ),
            dotsDecorator: DotsDecorator(
              size: const Size(10.0, 10.0),
              color: AppColor.neutral.shade400,
              activeColor: AppColor.primary,
              activeSize: const Size(22.0, 10.0),
              activeShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
