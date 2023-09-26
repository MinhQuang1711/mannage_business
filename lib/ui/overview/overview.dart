import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/defautl_padding.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/ui/overview/widgets/floating_buttons.dart';
import 'package:mannager_business/ui/overview/widgets/import_bill_card.dart';
import 'package:mannager_business/ui/overview/widgets/overview_card.dart';
import 'package:mannager_business/ultils/extensions/money.dart';
import 'package:mannager_business/widget/app_bars/app_bar.dart';
import 'package:mannager_business/widget/list_views/list_view.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BusinessAppbar(
        backgroundColor: BusinessColors.blue,
        title: "22 Percent Coffee",
        canBack: false,
      ),
      body: Container(
        padding: defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title("Tổng quan"),
            const SizedBox(height: 5),
            const OverviewCard(
              totalBill: 0,
              totalProfit: 0,
              totalRevenue: 0,
            ),
            const SizedBox(height: 10),
            _title("Phiếu nhập & sản phẩm"),
            const SizedBox(height: 5),
            Row(
              children: [
                InforDetailOverviewCard(
                  content: 100000.toDouble().toMoney(),
                  title: "Hóa đơn nhập: 2",
                ),
                const SizedBox(width: 10),
                InforDetailOverviewCard(
                  content: 13.toString(),
                  title: "Tổng sản phẩm đang bán",
                ),
              ],
            ),
            const SizedBox(width: 10),
            const SizedBox(height: 10),
            _title("Sản phẩm bán chạy trong ngày"),
            const Expanded(
              child: Center(
                child: BusinessListView(
                  items: [],
                  child: SizedBox(),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: const OverviewFloatingButton(),
    );
  }

  Text _title(String title) => Text(
        title,
        style: bodyBold.copyWith(color: BusinessColors.dark),
      );
}
