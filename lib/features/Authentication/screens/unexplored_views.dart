import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gantabya/utils/applayout.dart';
import 'package:gantabya/utils/constants/colors.dart';
import 'package:gap/gap.dart';

class UnexploredTab extends StatelessWidget {
  final String image1;
  final String destination;
  final String info;
  const UnexploredTab({super.key, required this.image1, required this.destination, required this.info});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Container(
            height: 200,
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
          Container(
            height: 80,
            padding: EdgeInsets.only(left: 10,right: 10),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination, style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text(
                      info, style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                  ],
                ),
                Text("Lets Go",style: TextStyle(
                  decoration: TextDecoration.underline,
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
