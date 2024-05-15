import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/widgets/for_all/custom_back_ground_container.dart';
import 'package:responsive_credit_card_app/widgets/my_card_section/my_card_section.dart';
import 'package:responsive_credit_card_app/widgets/transaction_history_section/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
