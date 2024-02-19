import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gantabya/utils/constants/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
