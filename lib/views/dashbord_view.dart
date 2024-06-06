import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/layouts/adabtive_layout_widget.dart';
import 'package:responsive_credit_card_app/layouts/dashbord_desktop_layout.dart';
import 'package:responsive_credit_card_app/layouts/dashbord_mobile_layout.dart';
import 'package:responsive_credit_card_app/layouts/dashbord_tablet_layout.dart';
import 'package:responsive_credit_card_app/utils/size_config.dart';
import 'package:responsive_credit_card_app/widgets/drawer_section/custom_drawer.dart';

class DashBordView extends StatefulWidget {
  const DashBordView({super.key});

  @override
  State<DashBordView> createState() => _DashBordViewState();
}

class _DashBordViewState extends State<DashBordView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFF4DB7F2),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdabtiveLayout(
        mobileLayout: (context) => const DashBordMobileLayout(),
        tabletLayout: (context) => const DashBordTabletLayout(),
        desktopLayout: (context) => const DashBordDesktopLayout(),
      ),
    );
  }
}
