import 'package:air_travel/travel/presentation/widgets/FavoritesTexts_widget.dart';
import 'package:air_travel/travel/presentation/widgets/OpenMore_widget.dart';
import 'package:air_travel/travel/presentation/widgets/PackageImage_widget.dart';
import 'package:air_travel/travel/presentation/widgets/Tariffs_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TravelComposition_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TravelDay_widget.dart';
import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class TourPackageItem extends StatelessWidget {
  const TourPackageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9, vertical: 7),
        width: 302,
        height: 529,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.GrayBorder,
            width: 2,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PackageImageItem(
              image: "TravelAssets/images/places/makka.png",
              common_day: "14 kun",
              flight_text: "14 Oktabr",
              landing_text: "27 Oktabr",
            ),
            FavoritesTextsItem(text: "Umra Safari"),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TravelDayItem_widget(
                  day: "10",
                  text: "KUN",
                  where: "Madinada",
                ),
                TravelDayItem_widget(
                  day: "5",
                  text: "KUN",
                  where: "Makkada",
                ),
              ],
            ),
            FavoritesTextsItem(text: "Sayohat tarkibi"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TravelComposition(text: "Sug'urta"),
                TravelComposition(text: "Chipta"),
                TravelComposition(text: "Aviachipta"),
                TravelComposition(text: "Viza"),
                OpenMoreItem(text: "6 +"),
              ],
            ),
            FavoritesTextsItem(text: "Tariflar"),
            SizedBox(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 25,
                  children: [
                    TariffsItem(
                      tariff: "Ekonom",
                      price: "1200＄",
                      oldPrice: "1300＄",
                      text: "Afzalliklari",
                      FirstComposition: "Transport Xizmati",
                      SecondComposition: "Nonushta",
                    ),
                    TariffsItem(
                      tariff: "Standart",
                      price: "1400\$",
                      oldPrice: "1600\$",
                      text: "Afzalliklari",
                      FirstComposition: "Transport Xizmati",
                      SecondComposition: "Nonushta",
                    ),
                    TariffsItem(
                      tariff: "Premium",
                      price: "1800\$",
                      oldPrice: "2000",
                      text: "Afzalliklari",
                      FirstComposition: "Transport Xizmati",
                      SecondComposition: "Nonushta",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 362,
              height: 4,
              color: Colors.grey.withValues(alpha: 0.5),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                context.go('/detail');
              },
              child: Container(
                width: 274,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.GreenMain,
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Batafsil...",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
