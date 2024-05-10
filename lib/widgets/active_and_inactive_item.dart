import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_credit_card_app/models/drawer_item_model.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';

class InActiveDraweItem extends StatelessWidget {
  const InActiveDraweItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyle.styleMedium16,
      ),
    );
  }
}

class ActiveDraweItem extends StatelessWidget {
  const ActiveDraweItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyle.stylBold16,
      ),
      trailing: Container(
        width: 3.27,
        height: 48,
        decoration: const BoxDecoration(color: Color(0xff4EB7F2)),
      ),
    );
  }
}