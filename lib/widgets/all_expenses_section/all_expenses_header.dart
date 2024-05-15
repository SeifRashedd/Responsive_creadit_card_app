import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses_section/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'ALL EXPENSES',
          style: AppStyle.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        RangeOptions(),
      ],
    );
  }
}
