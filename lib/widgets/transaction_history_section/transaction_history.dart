import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';
import 'package:responsive_credit_card_app/widgets/transaction_history_section/transaction_history_header.dart';
import 'package:responsive_credit_card_app/widgets/transaction_history_section/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        Gap(10),
        Text('13 April 2022', style: AppStyle.styleDateTransactionHistory),
        Gap(10),
        TransactionHistoryListView(),
      ],
    );
  }
}
