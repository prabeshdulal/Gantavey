import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gantabya/features/Authentication/screens/onboarding.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
      home: OnboardingScreens(),
     // color: Colors.teal,
    );
  }
}