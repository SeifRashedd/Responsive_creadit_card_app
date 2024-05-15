import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_credit_card_app/models/user_info_model.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.imgae),
          title: Text(
            userInfoModel.title,
            style: AppStyle.styleSemiBold16,
          ),
          subtitle: Text(
            userInfoModel.subtitle,
            style: AppStyle.styleRegular12,
          ),
        ),
      ),
    );
  }
}
