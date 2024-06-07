import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses_section/range_options.dart';



class InComeSectionHeader extends StatelessWidget {
  const InComeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyle.styleSemiBold20),
        const RangeOptions(),
      ],
    );
  }
}
