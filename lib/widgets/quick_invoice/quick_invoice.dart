import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/widgets/for_all/custom_back_ground_container.dart';
import 'package:responsive_credit_card_app/widgets/quick_invoice/latest_transaction_list_view.dart';
import 'package:responsive_credit_card_app/widgets/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [QuickInvoiceHeader(), LatestTransactionListView()],
      ),
    );
  }
}
