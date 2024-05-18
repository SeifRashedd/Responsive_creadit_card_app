import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/models/drawer_item_model.dart';
import 'package:responsive_credit_card_app/models/user_info_model.dart';
import 'package:responsive_credit_card_app/utils/app_images.dart';
import 'package:responsive_credit_card_app/widgets/drawer_section/active_and_inactive_item.dart';
import 'package:responsive_credit_card_app/widgets/drawer_section/drawer_item_list_view.dart';
import 'package:responsive_credit_card_app/widgets/drawer_section/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  imgae: Assets.imagesAvatar2,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(child: Gap(8)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDraweItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system',
                      image: Assets.imagesSettingSystem),
                ),
                InActiveDraweItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account',
                      image: Assets.imagesLogoutAccount),
                ),
                Gap(48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
