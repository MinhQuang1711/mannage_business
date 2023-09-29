import 'package:flutter/material.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/ultils/extensions/date.dart';
import 'package:mannager_business/ultils/extensions/payment_type.dart';
import 'package:mannager_business/widget/cards/base_cards.dart';

class HistorySellCard extends StatelessWidget {
  const HistorySellCard({
    super.key,
    required this.billID,
    required this.dateTime,
    required this.paymentTypeIndex,
    required this.onTap,
  });
  final String billID;
  final DateTime dateTime;
  final int paymentTypeIndex;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      onTap: onTap,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            billID,
            style: captionBold,
          ),
          Text(
            dateTime.toExtractTime(),
            style: detailRegular,
          )
        ],
      ),
      descriptions: Text(
        paymentTypeIndex.getPaymentType().getName(),
        style: detailMedium,
      ),
    );
  }
}
