import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: 350,
          height: 53,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              SvgPicture.asset("TravelAssets/icons/search.svg"),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    filled: true,
                    border: InputBorder.none,
                    fillColor: Colors.blueGrey.withValues(alpha: 0),
                    hintStyle: TextStyle(
                      color: Colors.grey.withValues(alpha: 0.8),
                    ),
                  ),
                ),
              ),
              SvgPicture.asset("TravelAssets/icons/filter.svg"),
            ],
          ),
        ),
        SizedBox(width: 16),
        SvgPicture.asset("TravelAssets/icons/notifications.svg"),
      ],
    );
  }
}
