import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gantabya/app.dart';
import 'package:gantabya/main.dart';


void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(
      Duration(seconds:3),
  );
  FlutterNativeSplash.remove();

  runApp(const MyApp());

}






