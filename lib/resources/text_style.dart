

import 'package:first_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

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
    return  TextStyle(
        fontSize: 16,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: R.colors.primaryDescription
    );
  }

  TextStyle dealCategoryTitle(){
    return const TextStyle(
        color: AppColors.black,
        fontSize: 18,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600
    );
  }

  TextStyle unselectedDealButton(){
    return TextStyle(color: AppColors.primaryButton, fontSize: 20,fontFamily: 'Inter',fontWeight: FontWeight.bold);
  }

  TextStyle homeDealHeaderTitle(){
    return  TextStyle(
    fontSize: 30,
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold
    );
  }

  TextStyle homeDealHeaderDescription(){
    return TextStyle(
      color: AppColors.primaryDescription, fontSize: 16, fontFamily: 'Inter',
        fontWeight: FontWeight.w500
    );
  }

  BoxShadow dealBoxShadow(){
    return BoxShadow(spreadRadius: 1,
        blurRadius: 1,
        offset: const Offset(0,0),
        color:Colors.grey.withOpacity(0.24)
    );
  }
}