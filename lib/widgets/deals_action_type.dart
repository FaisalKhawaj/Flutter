

import 'package:first_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:first_app/screens/homedeals.dart'; // Import the MyItem class from homedeals.dart

class DealsActionType extends StatelessWidget{
final DealActionItem item;
final bool isSelected;
  const DealsActionType({super.key,required this.isSelected,required this.item});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 2),
      decoration: BoxDecoration(
        color: isSelected?AppColors.primaryButton:Colors.white,
        border: Border.all(
          color: AppColors.inputBorder,
          width: 1
        ),
        // border: BorderSide(color: Colors.red,width: 1),
        borderRadius: BorderRadius.circular(10),

      ),
      child: Row(
        spacing: 10,
        children: [
          Icon(item.icon,color: isSelected?Colors.yellow:AppColors.primaryButton,),
          Text(item.type,style: TextStyle(
            color: isSelected?Colors.white:Colors.black,
            fontFamily:'Inter',
            fontWeight: FontWeight.w500
          ),)
        ],
      ),

      // width: ,
    );
  }


}