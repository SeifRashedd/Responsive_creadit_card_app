import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/models/drawer_item_model.dart';
import 'package:responsive_credit_card_app/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDraweItem(drawerItemModel: drawerItemModel)
        : InActiveDraweItem(drawerItemModel: drawerItemModel);
  }
}


