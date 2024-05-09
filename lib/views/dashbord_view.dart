import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/widgets/adabtive_lauout_widget.dart';
import 'package:responsive_credit_card_app/widgets/dashbord_desktop_layout.dart';

class DashBordView extends StatelessWidget {
  const DashBordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AdabtiveLayout(mobileLayout: (context) => const SizedBox(),
       tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashBordDesktopLayout(),),
    );
  }
}