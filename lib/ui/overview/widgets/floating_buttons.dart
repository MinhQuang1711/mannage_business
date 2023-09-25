import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';

class OverviewFloatingButton extends StatefulWidget {
  const OverviewFloatingButton({super.key});

  @override
  State<OverviewFloatingButton> createState() => _OverviewFloatingButtonState();
}

class _OverviewFloatingButtonState extends State<OverviewFloatingButton> {
  bool _isActive = false;
  void _changedIsActive() {
    _isActive = !_isActive;
    setState(() {});
  }

  void _onAddProduct() {}
  void _onAddIgredient() {}
  void _onAddImportBill() {}

  @override
  Widget build(BuildContext context) {
    final List<SpeedDialChild> fabs = [
      SpeedDialChild(
        onTap: _onAddProduct,
        labelWidget: _speedDialChildWidget(
            content: "Sản phẩm", textColor: BusinessColors.orange),
      ),
      SpeedDialChild(
        onTap: _onAddIgredient,
        labelWidget: _speedDialChildWidget(
            content: "Nguyên liệu", textColor: BusinessColors.blue),
      ),
      SpeedDialChild(
        onTap: _onAddImportBill,
        labelWidget: _speedDialChildWidget(
            content: "Hóa đơn nhập", textColor: BusinessColors.lightGreen),
      ),
    ];

    return SpeedDial(
      spacing: 15,
      children: fabs,
      onOpen: _changedIsActive,
      onClose: _changedIsActive,
      shape: const CustomSpeedDialShape(),
      buttonSize: const Size(45, 45),
      backgroundColor: BusinessColors.blue,
      foregroundColor: BusinessColors.white,
      icon: !_isActive ? Icons.add : Icons.close,
      activeForegroundColor: BusinessColors.blue,
      activeBackgroundColor: BusinessColors.white,
      overlayColor: BusinessColors.black.withOpacity(0.5),
    );
  }

  Container _speedDialChildWidget({
    required String content,
    Color? textColor,
  }) =>
      Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: BusinessColors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            content,
            style: captionBold.copyWith(color: textColor),
          ),
        ),
      );
}

class CustomSpeedDialShape extends ShapeBorder {
  final double borderRadius;

  const CustomSpeedDialShape({this.borderRadius = 12.0});

  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.all(0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(borderRadius)));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(borderRadius)));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return CustomSpeedDialShape(borderRadius: borderRadius * t);
  }
}
