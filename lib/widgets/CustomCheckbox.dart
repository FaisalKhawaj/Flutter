

import 'package:first_app/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget{
  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox>{
bool isChecked=false;

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(
    Checkbox(
      checkColor:AppColors.white ,
      activeColor: AppColors.primaryButton,
      // focusColor: Colors.red,
      hoverColor: AppColors.primaryButton,
      // fillColor: AppColors.primaryButton.withOpacity(0.8),
      onChanged: (bool? value) {
        setState(() {
          isChecked = value ?? false;
        });
      },

      // onChanged: (bool? value){setState(){isChecked=value??false;}},
      value: isChecked,
    )
    );
  }

}

