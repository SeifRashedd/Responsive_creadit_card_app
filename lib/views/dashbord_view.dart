import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/layouts/adabtive_layout_widget.dart';
import 'package:responsive_credit_card_app/layouts/dashbord_desktop_layout.dart';
import 'package:responsive_credit_card_app/layouts/dashbord_tablet_layout.dart';

class DashBordView extends StatelessWidget {
  const DashBordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdabtiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const DashBordTabletLayout(),
        desktopLayout: (context) => const DashBordDesktopLayout(),
      ),
    );
  }
}
