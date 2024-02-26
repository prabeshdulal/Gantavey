import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/colors.dart';

class DestinationView extends StatelessWidget {
  final String image1;
  final String text;
  final Widget? page;

  const DestinationView({
    Key? key,
    required this.image1,
    required this.text,
    this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              if (page != null) {
                Get.to(() => page!);
              }
            },
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(image1),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Styles.greenshede0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    if (page != null) {
                      Get.to(() => page!);
                    }
                  },
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (page != null) {
                      Get.to(() => page!); // Navigate to specified page using GetX
                    }
                  },
                  child: Text(
                    "See more",
                    style: TextStyle(
                      color: Color(0xFF1E3A34),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
