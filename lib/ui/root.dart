import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/ui/accounts/acctount.dart';
import 'package:mannager_business/ui/histories/history.dart';
import 'package:mannager_business/ui/overview/overview.dart';
import 'package:mannager_business/ui/sell/sell.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _currentIndex = 0;

  void _changeTab(int value) {
    _currentIndex = value;
    setState(() {});
  }

  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
      icon: BusinessIcon(assetGenImage: Assets.icons.homeLight),
      label: "Tổng quan",
    ),
    BottomNavigationBarItem(
      icon: BusinessIcon(assetGenImage: Assets.icons.timeLight),
      label: "Lịch sử",
    ),
    BottomNavigationBarItem(
      icon: BusinessIcon(assetGenImage: Assets.icons.bagLight),
      label: "Bán hàng",
    ),
    BottomNavigationBarItem(
      icon: BusinessIcon(assetGenImage: Assets.icons.userLight),
      label: "Tài khoản",
    ),
  ];

  final List<Widget> _tabs = [
    const Overview(),
    const History(),
    const Sell(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        onTap: _changeTab,
        selectedLabelStyle: detailMedium,
        currentIndex: _currentIndex,
        selectedItemColor: BusinessColors.blue,
        unselectedItemColor: BusinessColors.light,
      ),
    );
  }
}
