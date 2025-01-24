import 'package:air_travel/travel/presentation/widgets/BottomNavBar_widget.dart';
import 'package:air_travel/travel/presentation/widgets/Detail_widgets/search_widget.dart';
import 'package:air_travel/travel/presentation/widgets/FavoritesTexts_widget.dart';
import 'package:air_travel/travel/presentation/widgets/PageView_widget.dart';
import 'package:air_travel/travel/presentation/widgets/PopularPlace_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TimeContainer_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TourPackage_widget.dart';
import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> images = [
    "TravelAssets/images/offers/offers_1.jpg",
    "TravelAssets/images/offers/offers_2.jpg",
    "TravelAssets/images/offers/offers_3.jpg",
    "TravelAssets/images/offers/offers_4.jpg",
    "TravelAssets/images/offers/offers_5.jpg",
    "TravelAssets/images/offers/offers_6.jpg",
    "TravelAssets/images/offers/offers_7.jpg",
    "TravelAssets/images/offers/offers_8.jpg",
    "TravelAssets/images/offers/offers_9.jpg",
  ];
  int current_page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchItem(),
                SizedBox(height: 20),
                Container(
                  height: 120,
                  child: Stack(
                    children: [
                      PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        onPageChanged: (index) {
                          setState(() {
                            current_page = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return ImageCustomItem(
                            image: images[index],
                          );
                        },
                      ),
                      Positioned(
                        bottom: 12,
                        right: 0,
                        left: 0,
                        child: Center(
                          child: Container(
                            width: 62,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FavoritesTextsItem(text: "Mashxur joylar"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PopularPlaces(
                        image: "TravelAssets/images/places/paris.png",
                        text: "Parij",
                      ),
                      GestureDetector(
                        onTap: (){
                          context.go('/details');
                        },
                        child: PopularPlaces(
                          image: "TravelAssets/images/places/makka.png",
                          text: "Makka",
                        ),
                      ),
                      PopularPlaces(
                        image: "TravelAssets/images/places/malayziya.png",
                        text: "Malayzia",
                      ),
                      PopularPlaces(
                        image: "TravelAssets/images/places/dubai.png",
                        text: "Dubai",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
          Container(
            width: 427,
            height: 634,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.amber,
                ],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("TravelAssets/icons/discount.svg"),
                        SizedBox(width: 13),
                        Column(
                          children: [
                            Text(
                              "Shoshiling",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "20% gacha chegirma",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    TimeMainItem(),
                  ],
                ),
                SizedBox(height: 25),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 11,
                    children: [
                      TourPackageItem(),
                      TourPackageItem(),
                      TourPackageItem(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 50),
              child: TourPackageItem(),
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavBarItem(),
    );
  }
}
