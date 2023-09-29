import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/defautl_padding.dart';
import 'package:mannager_business/ui/histories/views/import_bills/import_bill_history.dart';
import 'package:mannager_business/ui/histories/views/sell_bills/sell_bill.dart';
import 'package:mannager_business/widget/app_bars/app_bar.dart';
import 'package:mannager_business/widget/unfocus_widget.dart';

import '../../const/text_style/text_style.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return const HistoryPage();
  }
}

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final tabs = [
    const Tab(
      text: "Hóa đơn bán",
    ),
    const Tab(
      text: "Hóa đơn nhập",
    )
  ];
  final List<Widget> childrenTabView = [
    const HistorySellBill(),
    const HistoryImportBill(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: const BusinessAppbar(
          title: "Lịch sử",
          canBack: false,
          backgroundColor: BusinessColors.blue,
        ),
        body: UnfocusWidget(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 30,
                child: TabBar(
                  tabs: tabs,
                  indicatorWeight: 0.7,
                  labelStyle: detailRegular,
                  labelColor: BusinessColors.blue,
                  indicatorColor: BusinessColors.blue,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: BusinessColors.dark,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: defaultPadding,
                  child: TabBarView(children: childrenTabView),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
