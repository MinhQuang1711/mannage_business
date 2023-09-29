import 'package:flutter/material.dart';
import 'package:mannager_business/ui/histories/views/sell_bills/views/detail_sell_bills/detail_sell_bill.dart';
import 'package:mannager_business/ui/histories/widgets/cards/history_sell_card.dart';
import 'package:mannager_business/ultils/extensions/context.dart';

class HistorySellBillListView extends StatelessWidget {
  const HistorySellBillListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: HistorySellCard(
          onTap: () => context.showBottomSheet(const DeatailSellBill()),
          billID: 'billID',
          dateTime: DateTime.now(),
          paymentTypeIndex: 0,
        ),
      ),
    );
  }
}
