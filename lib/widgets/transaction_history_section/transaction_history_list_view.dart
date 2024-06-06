import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/models/transaction_model.dart';
import 'package:responsive_credit_card_app/widgets/transaction_history_section/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr,2022',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    // cuz all of expenses,quick invoice section,my card and transaction history in the same list view so we should make it as colume.
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );

    // return ListView.builder(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return TransactionItem(transactionModel: items[index]);
    //     });
  }
}
