import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/applayout.dart';
import '../../../utils/constants/colors.dart';
import 'home_bottom_bar.dart';

class BKTDescription extends StatelessWidget {
  const BKTDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: Container(
        child: Column(
          children: [
            Container(
              height: 741,
               child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const Gap(10),
          Text("A little about Bhaktapur", style: TextStyle(
            fontSize: 32,
          )),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(""
                "\t\t\t\t\t\t\t\t\t\t\t\t Bhaktapur, the name itself devotes it to the city of pilgrimage and religion, where Bhakta means the devotees, and pur means the city. That is why Bhaktapur is called the city of devotees. Undoubtedly, at one time period, it had more temples and gods than the roofs of houses and people respectively."
            ),
          ),
          const Gap(15),
          Text(
              "Cultural Sightseeing at Bhaktapur", style: TextStyle(
            fontSize: 32,
          )
          ),
          const Gap(10),
          Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                  "1. Char Dham, the representative temples of Kashi \n2. Gate to the durbar square made of brick and plastered over with white Ilme\n3. Golden gate, Nepal’s one of the best masterful bronze work\n4. Statue of King Bhupatindra Malla\n5. Vatsala Durga Temple, a sliced Indian textured shikhara style temple\n6. 55 window palace\n7. Nyatapola temple, which has five stories, which is the tallest temple in Nepal\n8. Bhairavnath temple which lies on the left-hand side of nyatapola temple\n9. Dattatreya temple, one of the oldest temples of Bhaktapur\n10. Pottery square, a fine place of ceramics arts and crafts\n11. Shiddhapokhari, the largest manmade pond of Bhaktapur."
              )
          ),
          const Gap(15),
          Text(
              "Short Hikes in Bhaktapur", style: TextStyle(
            fontSize: 32,
          )
          ),
          const Gap(10),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
                "1. Pilot Baba,\n2. Gundu\n3. Ranikot\n4. Ashapuri,\n5. Doleshwor temple\n6. Kalamasi lake(a small dam near Nagarkot area)"
            ),
          ),
          const Gap(15),
          Text(
              "Roaming around in the museums", style: TextStyle(
            fontSize: 32,
          )
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Text(
                "There are a total of three prominent museums in Bhaktapur city."
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text("\t\t1. Wood carving museum(best known for the peacock window.\n\t\t2. Brass and bronze museum(which have a good collection of metalware and ancient housewares)\n\t\t3. National art museum ( have pieces of stone carvings and manuscripts, as well as a fine collection of thangka)"),
          ),
          const Gap(15),
          Text(
              "Other thing that you can’t do in bhaktapur", style: TextStyle(
            fontSize: 32,
          )
          ),
          const Gap(10),
          Container(
              padding: EdgeInsets.only(left: 10),
              child: Text("Celebrate Jatras Evening walk in the Bhaktapur Durbar square \nPottery work \nReligious Journey \nEnjoy the specialty of Bhaktapur: Ju Ju dhau \nShopping at Bhaktapur"))
                ]),
              ),
            ),
            Container(
              width: size.width,
              height: 40,
              color: Colors.teal,
              child: ElevatedButton(onPressed: ()=>Get.to(()=>const HomeBottomBar()),
                child: Text("Let\'s Go"),
              ),
            )
          ],
        ),
      )
    );
  }
}
