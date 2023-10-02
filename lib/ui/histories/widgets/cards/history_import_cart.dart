import 'package:flutter/material.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/ultils/extensions/date.dart';
import 'package:mannager_business/ultils/extensions/money.dart';
import 'package:mannager_business/widget/cards/base_cards.dart';

class HistoryImportCard extends StatelessWidget {
  const HistoryImportCard(
      {super.key,
      required this.billID,
      required this.total,
      required this.dateTime});
  final String billID;
  final double total;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            billID,
            style: captionBold,
          ),
          Text(dateTime.toDateFormat()),
        ],
      ),
      descriptions: Text(total.toMoney()),
    );
  }
}
