import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gantabya/utils/constants/colors.dart';
import 'package:gantabya/utils/widgets/service_button.dart';
import 'package:gap/gap.dart';
import '../../../utils/applayout.dart';
import '../../../utils/widgets/main_feature_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          //Top bar
          Container(
            color: Styles.teal,
            height: 70,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  "assets/images/icons/user.png" // Assuming the image is in the assets/images directory
                              )
                          )
                      ),
                    ),
                    Row(
                      children: [
                        Text("Hi, Mahesh", style: CoLor.txtstyle,),
                      ],
                    ),
                    Container(
                        child:
                        Icon(Icons.menu)),
                  ],
                ),

              ],
            ),
          ),
          //Map
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(08),
                color: Colors.grey.shade200,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/icons/ktmpkr.png"
                              )
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                right: 15,
                child: OutlinedButton(
                  onPressed: () {
                    // Add your action here
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(1),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.map_outlined, color: Colors.teal,),
                      SizedBox(width: 8),
                      Text('Offline Map', style: CoLor.txtstyle.copyWith(color: Colors.teal),),
                    ],
                  ),
                ),
              ),
            ]
          ),
          const Gap(10),
          //Main Services
          Container(
            height: 110,
            padding: const EdgeInsets.all(13),
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    MainFeatureButton(image: AssetImage("assets/images/icons/destination.jpg"), text1: 'Destination',),
                    MainFeatureButton(image: AssetImage("assets/images/icons/luggage.jpg"), text1: 'Luggage',),
                    MainFeatureButton(image: AssetImage("assets/images/icons/car.jpg"), text1: 'Vehicle',),
                    MainFeatureButton(image: AssetImage("assets/images/icons/money.jpg"), text1: 'Cost Estimation',)
              ],
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: const Text(
              "Our Services",
              style: TextStyle(
              fontSize: 30,
                fontWeight: FontWeight.w600
            ),
            ),
          ),
          //Our Features
          Container(
              padding: const EdgeInsets.all(13),
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ServiceButton(image: AssetImage("assets/images/icons/guide.jpg"), text1: 'Guide',),
                  Gap(5),
                  ServiceButton(image: AssetImage("assets/images/icons/hotel.png"), text1: 'Cost Estimation',),
                  Gap(5),
                  ServiceButton(image: AssetImage("assets/images/icons/luggage.jpg"), text1: 'Travel Gear',),
                  Gap(5),
                  ServiceButton(image: AssetImage("assets/images/icons/group.jpg"), text1: 'Group Members',),
                ],
              )
          )
        ],
      ),
    );
  }
}