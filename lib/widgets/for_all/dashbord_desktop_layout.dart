import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/widgets/for_all/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_credit_card_app/widgets/drawer/custom_drawer.dart';
import 'package:responsive_credit_card_app/widgets/my_card/my_card.dart';

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
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        Gap(24),
        Expanded(
          child: MyCard(),
        )
      ],
    );
  }
}
