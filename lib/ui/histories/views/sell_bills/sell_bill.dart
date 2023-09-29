import 'package:flutter/material.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/ui/histories/views/sell_bills/views/detail_sell_bills/widgets/list_view.dart';
import 'package:mannager_business/ultils/extensions/context.dart';
import 'package:mannager_business/ultils/extensions/date.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';
import 'package:mannager_business/widget/list_views/list_view.dart';

import '../../../../widget/drop_down/drop_items/drop_items.dart';

class HistorySellBill extends StatelessWidget {
  const HistorySellBill({super.key});

  @override
  Widget build(BuildContext context) {
    return const HistorySalePage();
  }
}

class HistorySalePage extends StatefulWidget {
  const HistorySalePage({super.key});

  @override
  State<HistorySalePage> createState() => _HistorySalePageState();
}

class _HistorySalePageState extends State<HistorySalePage> {
  var customDropItems = CustomDropItems();
  var dateSelected = DateTime.now();
  DateTimeRange _dateRangeSelected = DateTimeRange(
    start: DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    ),
    end: DateTime.now(),
  );
  void onPickRangeDate() async {
    var datePicked = await context.pickDateRange(initRange: _dateRangeSelected);
    datePicked != null ? _dateRangeSelected = datePicked : null;
    datePicked != null ? setState(() {}) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: _dateFilter(onPickRangeDate)),
        const Expanded(
          flex: 10,
          child: BusinessListView(
            items: ['a'],
            child: HistorySellBillListView(),
          ),
        )
      ],
    );
  }

  Widget _dateFilter(Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          BusinessIcon(assetGenImage: Assets.icons.dateRangeDuotoneLine),
          Text(
            "${_dateRangeSelected.start.toDateFormat()} - ${_dateRangeSelected.end.toDateFormat()}",
            style: detailRegular,
          )
        ],
      ),
    );
  }
}
