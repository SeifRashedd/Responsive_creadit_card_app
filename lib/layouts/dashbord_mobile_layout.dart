import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/widgets/for_all/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_credit_card_app/widgets/for_all/my_card_and_transaction_history.dart';
import 'package:responsive_credit_card_app/widgets/income_section/income_section.dart';

class DashBordMobileLayout extends StatelessWidget {
  const DashBordMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          Gap(24),
          MyCardAndTransactionHistorySection(),
          Gap(24),
          IncomeSection(),
        ],
      ),
    );
  }
}