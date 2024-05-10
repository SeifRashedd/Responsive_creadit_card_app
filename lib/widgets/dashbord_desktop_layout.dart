import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_credit_card_app/widgets/custom_drawer.dart';

class DashBordDesktopLayout extends StatelessWidget {
  const DashBordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer())
      ],
    );
  }
}