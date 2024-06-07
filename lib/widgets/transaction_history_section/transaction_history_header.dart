import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Transaction History',
          style: AppStyle.styleSemiBold20,
        ),
        Text(
          'See all',
          style: AppStyle.styleMedium16.copyWith(
            color: const Color(0xff4db7f2),
          ),
        ),
      ],
    );
  }
}