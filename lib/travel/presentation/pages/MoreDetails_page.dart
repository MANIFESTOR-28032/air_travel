import 'package:air_travel/travel/presentation/widgets/Detail_widgets/BottomNavBarBuy_widget.dart';
import 'package:air_travel/travel/presentation/widgets/Detail_widgets/TravelDiary_widget.dart';
import 'package:air_travel/travel/presentation/widgets/FavoritesTexts_widget.dart';
import 'package:air_travel/travel/presentation/widgets/ShortInfoContainer_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TariffDetail_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TariffsText_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TravelComposition_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TravelDay_widget.dart';
import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MoreDetails extends StatelessWidget {
  const MoreDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: Container(
          padding: EdgeInsets.all(18),
          width: 28,
          height: 28,
          child: GestureDetector(
            onTap: () {
              context.go('/home');
            },
            child: SvgPicture.asset("TravelAssets/icons/back-arrow.svg"),
          ),
        ),
      ),
      body: ListView(
        children: [
          Image(
            image: AssetImage("TravelAssets/images/places/makka.png"),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(right: 13, left: 13, bottom: 100),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShortinfoContainerItem(
                  where: "Umra Safari",
                  info:
                      "Viza, Aviachiptalar, Transferlar, Mehmonxonalar (4 va 5 yulduzli), Ovqat (2 mahal milliy taom), Ekskursiyalar, Transport xizmati, Zamzam suvi (5 litr)",
                ),
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
                  children: [
                    TravelComposition(text: "Sug'urta"),
                    SizedBox(width: 3),
                    TravelComposition(text: "Chipta"),
                    SizedBox(width: 3),
                    TravelComposition(text: "Aviachipta"),
                    SizedBox(width: 3),
                    TravelComposition(text: "Viza"),
                  ],
                ),
                FavoritesTextsItem(text: "Sayohat kundaligi"),
                TravelDiarItem(),
                FavoritesTextsItem(text: "Tariflar"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(

                    spacing: 40,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TariffDetailItem(
                        tariffs: "Ekonom",
                        price: "1200＄",
                        OldPrice: "1300＄",
                        plane:
                            " To'g'ridan-to'g'ri reys Toshkent Jidda Toshkent",
                        bus: " Zamonaviy va qulay avtobuslar",
                        medical: " Tibbiy sug’urta",
                        leaders: "Tarjibali yo'l boshchi",
                      ),
                      TariffDetailItem(
                        tariffs: "Standart",
                        price: "1400＄",
                        OldPrice: "1600＄",
                        plane:
                            "To'g'ridan-to'g'ri reys Toshkent Jidda Toshkent ",
                        bus: "Zamonaviy va qulay avtobuslar",
                        medical: "Tibbiy sug’urta",
                        leaders: "Tajribali yo’l boshchi",
                      ),
                      TariffDetailItem(
                        tariffs: "Premium",
                        price: "2000＄",
                        OldPrice: "1800＄",
                        plane:
                            "To'g'ridan-to'g'ri reys Toshkent Jidda Toshkent ",
                        bus: "Zamonaviy va qulay avtobuslar",
                        medical: "Tibbiy sug’urta",
                        leaders: "Tajribali yo’l boshchi",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomnavBarBuyitem(),
    );
  }
}
