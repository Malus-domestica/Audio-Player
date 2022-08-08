import 'dart:convert';
import 'package:audio_player/mytabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:audio_player/app_colors.dart' as AppColors;
import 'package:flutter/material.dart';
import 'package:audio_player/mytabs.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  List<String> imgQuote = [
    "assets/images/quoteimg1.jpg",
    "assets/images/quoteimg2.jpg",
    "assets/images/quoteimg3.jpg"
  ];

  List<String> quotes = [
    "Breathing & meditation uplift the spirit and bring clarity and strength to the mind.",
    "When there is no regret of the past, no want of the future, that moment is whole & complete. Meditation is living every moment totally with depth.",
    "Be simple, natural and wise. In meditation, you can expand your consciousness."
  ];

  List<String> imagetabBarView1 = ["Ustrasana", "Matyaasana", "Dhanurasana"];

  List<String> imagetabBarView2 = ["asana1", "asana2", "asana3"];

  List<String> imagetabBarView3 = ["asana1", "asana2", "asana3"];

  List<String> rating = ["4.5", "3.5", "4"];

  late ScrollController _scrollController;
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/menu.png"),
                      size: 24,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Guide to meditation",
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                child: PageView.builder(
                    controller: PageController(viewportFraction: 0.9),
                    itemCount: imgQuote == null ? 0 : imgQuote.length,
                    itemBuilder: (_, i) {
                      return Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              quotes[i],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(imgQuote[i]),
                              fit: BoxFit.fill,
                            )),
                      );
                    }),
              ),
              Expanded(
                child: NestedScrollView(
                  controller: _scrollController,
                  headerSliverBuilder: (BuildContext context, bool isScroll) {
                    return [
                      SliverAppBar(
                        pinned: true,
                        backgroundColor: AppColors.sliverBackground,
                        bottom: PreferredSize(
                          preferredSize: Size.fromHeight(50),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20, left: 10),
                            child: TabBar(
                              indicatorPadding: const EdgeInsets.all(0),
                              indicatorSize: TabBarIndicatorSize.label,
                              labelPadding: const EdgeInsets.only(right: 10),
                              controller: _tabController,
                              isScrollable: true,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 7,
                                        offset: Offset(0, 0))
                                  ]),
                              tabs: [
                                MyTabs(
                                    color: AppColors.menu1Color,
                                    text: "6-13 yrs"),
                                MyTabs(
                                    color: AppColors.menu2Color,
                                    text: "14-18 yrs"),
                                MyTabs(
                                    color: AppColors.menu3Color,
                                    text: "19-30 yrs")
                              ],
                            ),
                          ),
                        ),
                      )
                    ];
                  },
                  body: TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(
                          itemCount: imagetabBarView1.length,
                          itemBuilder: (_, i) {
                            return Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.tabVarViewColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(0, 0),
                                      color: Colors.grey.withOpacity(0.2),
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image:
                                                AssetImage(imagetabBarView1[i]),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 24,
                                                color: AppColors.starColor,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                rating[i],
                                                style: TextStyle(
                                                    color:
                                                        AppColors.menu2Color),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "BookName",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Avenir",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Subtitle",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Avenir",
                                              color: AppColors.subTitleText,
                                            ),
                                          ),
                                          Container(
                                            width: 60,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: AppColors.loveColor,
                                            ),
                                            child: Text(
                                              "Love",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Avenir",
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.subTitleText,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional.center,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                      ListView.builder(
                          itemCount: imagetabBarView2.length,
                          itemBuilder: (_, i) {
                            return Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.tabVarViewColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(0, 0),
                                      color: Colors.grey.withOpacity(0.2),
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image:
                                                AssetImage(imagetabBarView2[i]),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                      ListView.builder(
                          itemCount: imagetabBarView3.length,
                          itemBuilder: (_, i) {
                            return Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.tabVarViewColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(0, 0),
                                      color: Colors.grey.withOpacity(0.2),
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image:
                                                AssetImage(imagetabBarView3[i]),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
