import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';
import 'package:responsive_credit_card_app/widgets/quick_invoice/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyle.styleMedium16,
        ),
        Gap(16),
        LatestTransactionListView(),
      ],
    );
  }
}
