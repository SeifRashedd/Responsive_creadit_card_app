import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_credit_card_app/widgets/for_all/custom_back_ground_container.dart';
import 'package:responsive_credit_card_app/widgets/income_section/income_chart.dart';
import 'package:responsive_credit_card_app/widgets/income_section/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      children: [
        InComeSectionHeader(),
        Expanded(
          child: Row(
            children: [
              Expanded(child: InComeChart()),
            ],
          ),
        ),
      ],
    ));
  }
}
