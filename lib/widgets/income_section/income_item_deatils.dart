import 'package:flutter/material.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: Container(
      width: 12,
      height: 12,
      decoration: const ShapeDecoration(
         color: Color(0xff208CC8),
        shape: OvalBorder()),
     ),
    );
  }
}