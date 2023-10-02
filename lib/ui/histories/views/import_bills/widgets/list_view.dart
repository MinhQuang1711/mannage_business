import 'package:flutter/material.dart';
import 'package:mannager_business/ui/histories/widgets/cards/history_import_cart.dart';

class HistoryImportBillListView extends StatelessWidget {
  const HistoryImportBillListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: HistoryImportCard(
          billID: 'billID',
          total: 50000,
          dateTime: DateTime.now(),
        ),
      ),
    );
  }
}
