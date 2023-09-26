// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/ultils/extensions/money.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';

import '../../../const/colors/business_colors.dart';

class OverviewCard extends StatefulWidget {
  const OverviewCard({
    super.key,
    required this.totalBill,
    required this.totalProfit,
    required this.totalRevenue,
  });
  final int totalBill;
  final double totalProfit;
  final double totalRevenue;

  @override
  State<OverviewCard> createState() => _OverviewCardState();
}

class _OverviewCardState extends State<OverviewCard> {
  bool _canSee = false;
  void _onTapProfit() {
    _canSee = !_canSee;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
      decoration: BoxDecoration(
        color: BusinessColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: BusinessColors.dark.withOpacity(0.3),
            offset: const Offset(2.5, 2.5),
            blurRadius: 2,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _infoRevenue(
            canSee: true,
            isHiden: false,
            textColor: BusinessColors.blue,
            content: widget.totalRevenue.toMoney(),
            title: "Hóa đơn bán: ${widget.totalBill}",
          ),
          _infoRevenue(
            isHiden: true,
            canSee: _canSee,
            title: "Lợi nhuận",
            onTap: _onTapProfit,
            textColor: BusinessColors.orange,
            content: widget.totalProfit.toMoney(),
          ),
          const SizedBox(),
        ],
      ),
    );
  }

  Column _infoRevenue({
    required Color textColor,
    required bool isHiden,
    required bool canSee,
    required String title,
    required String content,
    Function()? onTap,
  }) {
    const String _hidenValue = "**** ****";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: bodyRegular,
            ),
            const SizedBox(width: 5),
            isHiden
                ? GestureDetector(
                    onTap: onTap,
                    child: BusinessIcon(
                      assetGenImage:
                          canSee ? Assets.icons.eye : Assets.icons.eyeSlash,
                    ),
                  )
                : const SizedBox()
          ],
        ),
        const SizedBox(height: 10),
        Text(
          !canSee ? _hidenValue : content,
          style: bodyBold.copyWith(color: !canSee ? null : textColor),
        ),
      ],
    );
  }
}
