import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gantabya/utils/constants/colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  var images = {
    "adventure.jpg": "Adventure",
    "religious1.png": "Religious",
    "trekking.png": "Trekking",
    "hiking.png": "Hiking",
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 70, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black,
                    ),
                    Expanded(child: Container()),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  "Explore the best place in Nepal",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search your destination...",
                              hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.search, color: Styles.primarygreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.teal,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(text: "Places",),
                    Tab(text: "place",),
                    Tab(text: "place...........",),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 15, top: 10),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/placesImage/gosaikunda.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                    Text("there"),
                    Text("k xa vaiii"),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore More",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.teal
                      ),

                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index){
                    return Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/icons/"+ images.keys.elementAt(index)),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(images.values.elementAt(index)),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Un-Explored places",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.teal
                      ),

                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index){
                    return Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/icons/"+ images.keys.elementAt(index)),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(images.values.elementAt(index)),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}