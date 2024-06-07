// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_credit_card_app/utils/size_config.dart';

abstract class AppStyle {
  static  TextStyle styleRegular16 = TextStyle(
    color: Color(0xff064060),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static  TextStyle styleMedium16 = TextStyle(
    color: Color(0xff064060),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static  TextStyle styleSemiBold16 = TextStyle(
    color: Color.fromARGB(255, 8, 14, 18),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static  TextStyle styleSemiBold20 = TextStyle(
    color: Color(0xff064060),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static  TextStyle styleRegular12 = TextStyle(
    color: Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 12 ),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static  TextStyle styleSemiBold24 = TextStyle(
    color: Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static  TextStyle styleRegular14 = TextStyle(
    color: Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static  TextStyle styleSemiBold18 = TextStyle(
    color: Color(0xffFFFFFF),
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static  TextStyle stylBold16 = TextStyle(
    color: Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static  TextStyle styleMedium20 = TextStyle(
    color: Color(0xffFFFFFF),
   fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static  TextStyle styleDateTransactionHistory = TextStyle(
    color: Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
}


double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}


double getScaleFactor() {
  var dispatcher =PlatformDispatcher.instance;
  var physicalwidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = devicePixelRatio/physicalwidth;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}