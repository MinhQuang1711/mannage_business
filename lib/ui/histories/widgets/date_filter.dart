import 'package:flutter/material.dart';
import 'package:mannager_business/ultils/extensions/date.dart';

import '../../../const/text_style/text_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../widget/image_icons/business_image_icon.dart';

class DateFilter extends StatelessWidget {
  const DateFilter({
    super.key,
    required this.onTap,
    required this.dateTimeRange,
  });
  final Function() onTap;
  final DateTimeRange dateTimeRange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          BusinessIcon(assetGenImage: Assets.icons.dateRangeDuotoneLine),
          Text(
            "${dateTimeRange.start.toDateFormat()} - ${dateTimeRange.end.toDateFormat()}",
            style: detailRegular,
          )
        ],
      ),
    );
  }
}
