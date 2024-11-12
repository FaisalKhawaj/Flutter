


import 'package:first_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final String buttonName;
  final VoidCallback onPressed;
  final double? width;
  final double height;
  final Color? backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;

  const CustomButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
    this.width,
    this.height=48,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.borderRadius,
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor:backgroundColor?? this.backgroundColor,
            overlayColor: AppColors.primaryButton,
            elevation: 0,
            fixedSize: Size(width?? MediaQuery.of(context).size.width*0.9,height),
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        onPressed:onPressed, child: Text(buttonName,style: TextStyle(
      color: textColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Inter'
    ),)
    );

  }

}