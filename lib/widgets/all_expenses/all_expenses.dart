import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses/all_expenses_header.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses/all_expenses_item_list_view.dart';
import 'package:responsive_credit_card_app/widgets/for_all/custom_back_ground_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          Gap(16),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}

