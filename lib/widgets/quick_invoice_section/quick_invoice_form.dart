import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/widgets/quick_invoice_section/custom_button.dart';
import 'package:responsive_credit_card_app/widgets/quick_invoice_section/title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextFiled(
                    title: 'Customer name', hint: 'Type customer name')),
            Gap(16),
            Expanded(
                child: TitleTextFiled(
                    title: 'Customer Email', hint: 'Type customer email')),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(title: 'Item name', hint: 'Type item name'),
            ),
            Gap(16),
            Expanded(
              child: TitleTextFiled(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        Gap(24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xff4DB7F2),
                backGroundColor: Colors.white,
              ),
            ),
            Gap(24),
            Expanded(
              child: CustomButton(),
            )
          ],
        )
      ],
    );
  }
}
