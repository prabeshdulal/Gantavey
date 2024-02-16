import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gantabya/utils/constants/iimage_strings.dart';
import 'package:gantabya/utils/constants/text_string.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollabe page
          PageView(
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
                image: Timages.onBoardingImage1,
                title: Ttext.Obtitle3,
                subtitle: Ttext.Obsubtitle3,
              ),
            ],
          ),

          ///Skip
          const OnBoardingSkip(),

          ///dot navigation

          ///Next
        ],
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: kToolbarHeight,
        right: 16.0,
        child: TextButton(
          onPressed: () {},
          child: const Text('Skip'),
        ));
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
    return Padding(
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
    );
  }
}
