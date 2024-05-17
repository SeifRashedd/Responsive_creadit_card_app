import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses_section/all_expenses.dart';
import 'package:responsive_credit_card_app/widgets/quick_invoice_section/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        Gap(10),
        QuickInvoice(),
      ],
    );
  }
}
