import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses/all_expenses.dart';
import 'package:responsive_credit_card_app/widgets/quick_invoice/quick_invoice.dart';
import 'package:responsive_credit_card_app/widgets/drawer/custom_drawer.dart';

class DashBordDesktopLayout extends StatelessWidget {
  const DashBordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Gap(32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
              Gap(10),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
