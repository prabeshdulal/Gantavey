import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/colors.dart';

class MainFeatureButton extends StatelessWidget {
  final AssetImage image;
  final String text1;
  const MainFeatureButton({Key? key, required this.image, required this.text1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: image
              )
          ),
        ),
        Center(
            child: Text(text1, style: CoLor.txtstyle.copyWith(fontSize: 14),))
      ],
    );
  }
}
