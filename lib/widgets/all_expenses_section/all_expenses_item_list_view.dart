import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/models/all_expenses_item_model.dart';
import 'package:responsive_credit_card_app/utils/app_images.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses_section/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final items = [
    const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 202',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 202',
        price: r'$20,129'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const Gap(8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const Gap(8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
