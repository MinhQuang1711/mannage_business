import 'package:flutter/material.dart';
import 'package:mannager_business/ui/histories/views/import_bills/widgets/list_view.dart';
import 'package:mannager_business/ui/histories/widgets/date_filter.dart';
import 'package:mannager_business/ultils/extensions/context.dart';
import 'package:mannager_business/widget/list_views/list_view.dart';

class HistoryImportBill extends StatelessWidget {
  const HistoryImportBill({super.key});

  @override
  Widget build(BuildContext context) {
    return const HistoryImportBillPage();
  }
}

class HistoryImportBillPage extends StatefulWidget {
  const HistoryImportBillPage({super.key});

  @override
  State<HistoryImportBillPage> createState() => _HistoryImportBillPageState();
}

class _HistoryImportBillPageState extends State<HistoryImportBillPage> {
  DateTimeRange _dateRangeSelected = DateTimeRange(
    start: DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    ),
    end: DateTime.now(),
  );
  void _onPickTime() async {
    var datepicked = await context.pickDateRange(initRange: _dateRangeSelected);
    datepicked != null ? _dateRangeSelected = datepicked : null;
    datepicked != null ? setState(() {}) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DateFilter(onTap: _onPickTime, dateTimeRange: _dateRangeSelected),
        const SizedBox(height: 10),
        const Expanded(
          child: BusinessListView(
            items: ['a'],
            child: HistoryImportBillListView(),
          ),
        ),
      ],
    );
  }
}
