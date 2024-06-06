// import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_credit_card_app/widgets/income_section/income_chart.dart';
import 'package:responsive_credit_card_app/widgets/income_section/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // log(MediaQuery.sizeOf(context).width.toString());
    return width >= 1200 && width < 1560
        ? const SizedBox()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: InComeChart(),
              ),
              Expanded(
                flex: 2,
                child: InComeDetails(),
              ),
            ],
          );
  }
}
