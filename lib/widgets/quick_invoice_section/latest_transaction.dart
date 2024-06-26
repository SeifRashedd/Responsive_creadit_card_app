// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';
import 'package:responsive_credit_card_app/widgets/quick_invoice_section/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyle.styleMedium16(context),
        ),
        Gap(16),
        LatestTransactionListView(),
      ],
    );
  }
}
