import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/models/transaction_model.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          title: Text(transactionModel.title, style: AppStyle.styleSemiBold16),
          subtitle: Text(transactionModel.date,
              style: AppStyle.styleDateTransactionHistory),
          trailing: Text(
            transactionModel.amount,
            style: AppStyle.styleSemiBold20.copyWith(
              color: transactionModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A),
            ),
          ),
        ));
  }
}
