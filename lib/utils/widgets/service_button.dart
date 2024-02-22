import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/colors.dart';

class ServiceButton extends StatelessWidget {
  final AssetImage image;
  final String text1;
  const ServiceButton({Key? key, required this.image, required this.text1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Styles.teal,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
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
          const Gap(5),
          Container(
              width: 270,
            alignment: Alignment.center,
              child:
                  Text(text1, style: CoLor.txtstyle.copyWith(fontSize: 18),),
          ),
        ],
      ),
    );
  }
}
