// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses_section/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'ALL EXPENSES',
          style: AppStyle.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        RangeOptions(),
      ],
    );
  }
}
