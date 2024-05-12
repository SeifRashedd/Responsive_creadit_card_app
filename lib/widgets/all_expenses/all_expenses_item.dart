import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/models/all_expenses_item_model.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses/in_active_and_active_all_expensess_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(itemModel: itemModel)
        : InActiveAllExpensesItem(itemModel: itemModel);
  }
}
