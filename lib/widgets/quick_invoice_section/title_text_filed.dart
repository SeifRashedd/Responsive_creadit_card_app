import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';
import 'package:responsive_credit_card_app/widgets/quick_invoice_section/custom_text_filed.dart';

class TitleTextFiled extends StatelessWidget {
  const TitleTextFiled({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMedium16,
        ),
        const Gap(12),
        CustomTextFiled(
          hint: hint,
        )
      ],
    );
  }
}
