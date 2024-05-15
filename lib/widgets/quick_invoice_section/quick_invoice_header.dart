import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyle.styleSemiBold20.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xfffafafa),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}