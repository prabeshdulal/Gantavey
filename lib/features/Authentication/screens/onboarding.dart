import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gantabya/features/Authentication/controllers.onboarding/onbording_controller.dart';
import 'package:gantabya/utils/constants/iimage_strings.dart';
import 'package:gantabya/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollabe page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: Timages.onBoardingImage1,
                title: Ttext.Obtitle1,
                subtitle: Ttext.Obsubtitle1,
              ),
              OnBoardingPage(
                image: Timages.onBoardingImage2,
                title: Ttext.Obtitle2,
                subtitle: Ttext.Obsubtitle2,
              ),
              OnBoardingPage(
                image: Timages.onBoardingImage3,
                title: Ttext.Obtitle3,
                subtitle: Ttext.Obsubtitle3,
              ),
            ],
          ),

          ///Skip
          const OnBoardingSkip(),

          ///dot navigation
          const OnBoardingDotNavigation(),

          ///Next
          Positioned(
              right: 24.0,
              bottom:  kBottomNavigationBarHeight,
              child: ElevatedButton(
                onPressed: (){
                  OnBoardingController.instance.nextPage();
                },
                style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: const Color(0xFF1E3A34)),
                child: const Icon(Iconsax.arrow_right_3,color: Colors.white,),
              ))
        ],
      ),
    );
  }
}

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: kBottomNavigationBarHeight+24,
        left: 24,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: const ExpandingDotsEffect(
              activeDotColor: Color(0xFF1E3A34), dotHeight: 6),
        )
    );
  }
}


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      right: 24,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: const Row(
          children: [
            // Add some spacing between icon and text
            Text(
              'Skip',
              style: TextStyle(
                color: Color(0xFF1E3A34), // Change the text color here
              ),
            ),
            Icon(
              Icons.skip_next, // Add your skip icon here
              color: Color(0xFF1E3A34), // Change the icon color here
            ),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF0FAF6),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image(
                width: MediaQuery.of(Get.context!).size.width * 0.8,
                height: MediaQuery.of(Get.context!).size.height * 0.6,
                image: AssetImage(image)),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
