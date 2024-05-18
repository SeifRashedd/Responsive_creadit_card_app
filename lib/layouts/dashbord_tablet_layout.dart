import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/layouts/dashbord_mobile_layout.dart';
import 'package:responsive_credit_card_app/widgets/drawer_section/custom_drawer.dart';

class DashBordTabletLayout extends StatelessWidget {
  const DashBordTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Gap(32),
        Expanded(
          flex: 3,
          child: DashBordMobileLayout(),
        ),
        Gap(32),
      ],
    );
  }
}
