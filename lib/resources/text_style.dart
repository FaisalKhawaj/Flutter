

import 'dart:ui';
import 'package:flutter/cupertino.dart';

import '../resources/resources.dart';


class AppTextStyle{

  TextStyle regularInter(){
    return TextStyle(
      // fontSize: 10.sp,
      fontFamily: 'Inter',
      // color: R.colors.blackColor,
    );
  }

  TextStyle boldOnboarding(){
    return TextStyle(
      fontSize: 24,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      color: R.colors.primaryText
    );
  }

  TextStyle descriptionOnboarding(){
    return TextStyle(
        fontSize: 16,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: R.colors.primaryDescription
    );
  }
}