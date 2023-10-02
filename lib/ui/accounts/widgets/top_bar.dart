import 'package:flutter/material.dart';

import '../../../const/colors/business_colors.dart';
import '../../../const/text_style/text_style.dart';

class AccountTopBar extends StatelessWidget {
  const AccountTopBar({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    var firstString = userName[0].toUpperCase();
    return Container(
      padding: const EdgeInsets.all(12),
      color: BusinessColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: BusinessColors.beige,
                child: Text(
                  firstString,
                  style: h5Medium.copyWith(
                    color: BusinessColors.lightOrange,
                    fontFamily: "MPLUS",
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                userName,
                style: bodyMedium.copyWith(
                  color: BusinessColors.black,
                  fontFamily: "MPLUS",
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          const Divider(
            color: BusinessColors.light,
          )
        ],
      ),
    );
  }
}
