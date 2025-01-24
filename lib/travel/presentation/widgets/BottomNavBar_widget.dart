import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends StatefulWidget {
  const BottomNavBarItem({super.key});

  @override
  State<BottomNavBarItem> createState() => _BottomNavBarItemState();
}

class _BottomNavBarItemState extends State<BottomNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 60,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavbarSvgItem(svg: "home.svg", text: "Home"),
          BottomNavbarSvgItem(svg: "cart.svg", text: "Cart"),
          BottomNavbarSvgItem(svg: "orders.svg", text: "Orders"),
          BottomNavbarSvgItem(svg: "wallet.svg", text: "Wallet"),
          BottomNavbarSvgItem(svg: "profile.svg", text: "Profile"),
        ],
      ),
    );
  }
}

class BottomNavbarSvgItem extends StatelessWidget {
  const BottomNavbarSvgItem({super.key, required this.svg, required this.text});

  final String svg, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("TravelAssets/icons/$svg"),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w700,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
