import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: AppStyle.styleRegular16.copyWith(
          color: const Color(0XFFAAAAAA),
        ),
        hintText: hint,
        fillColor: const Color(0XFFFAFAFA),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0XFFFAFAFA),
      ),
    );
  }
}
