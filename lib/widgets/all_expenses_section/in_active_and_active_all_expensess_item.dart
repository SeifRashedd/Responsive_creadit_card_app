import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/models/all_expenses_item_model.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';
import 'package:responsive_credit_card_app/widgets/all_expenses_section/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const Gap(5),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style: AppStyle.styleMedium16(context),
            ),
          ),
          const Gap(8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.date,
              style: AppStyle.styleRegular14(context),
            ),
          ),
          const Gap(16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.price,
              style: AppStyle.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xff4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackgroundColor: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            image: itemModel.image,
          ),
          const Gap(5),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style:
                  AppStyle.styleMedium16(context).copyWith(color: Colors.white),
            ),
          ),
          const Gap(8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.date,
              style: AppStyle.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
          ),
          const Gap(16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.price,
              style: AppStyle.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
