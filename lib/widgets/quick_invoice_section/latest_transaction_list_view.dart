import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/models/user_info_model.dart';
import 'package:responsive_credit_card_app/utils/app_images.dart';
import 'package:responsive_credit_card_app/widgets/drawer_section/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        imgae: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        imgae: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        imgae: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
        
  ];

  @override
  Widget build(BuildContext context) {
// if we have a few items we want it to scroll horizontally:
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
  // if we have alot of items we want it to scroll hertically and we need to get the width for the begest child:
    
//     return SizedBox(
//       height: 80,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return IntrinsicWidth(
//             child: UserInfoListTile(
//               userInfoModel: items[index],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
              