import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/models/item_details_model.dart';
import 'package:responsive_credit_card_app/widgets/income_section/income_item_deatils.dart';

class InComeDetails extends StatelessWidget {
  const InComeDetails({super.key});

  static const items = [
    ItemsDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', valu: '40%'),
    ItemsDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', valu: '25%'),
    ItemsDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', valu: '20%'),
    ItemsDetailsModel(color: Color(0xffE2DECD), title: 'Other', valu: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    // cuz we will all of the all expenses,quick invoice section,my card and transaction history in the same list view so we should make it as colume.
    return Column(
      children: items.map((e) => ItemsDetails(itemsDetailsModel: e)).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ItemsDetails(itemsDetailsModel: items[index]);
    //   },);
  }
}
