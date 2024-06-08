import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/views/dashbord_view.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const ResponsiveCreditCard(),
      ),
    );

class ResponsiveCreditCard extends StatelessWidget {
  const ResponsiveCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashBordView(),
    );
  }
}
