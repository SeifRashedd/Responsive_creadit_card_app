import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/models/item_details_model.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key, required this.itemsDetailsModel});

  final ItemsDetailsModel itemsDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            color: itemsDetailsModel.color, shape: const OvalBorder()),
      ),
      title: Text(itemsDetailsModel.title),
      trailing: Text(
        itemsDetailsModel.valu,
        style: AppStyle.styleMedium16(context).copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
