

import 'package:first_app/app_export.dart';
import 'package:flutter/material.dart';
import 'package:first_app/theme/theme_helper.dart';

class FoodLists extends StatelessWidget{
  final String title;
  final String description;
  const FoodLists({super.key,required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(left: 4,top: 2, bottom: 20,right: 4),
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width*0.9,
      // height: 10,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0,3),
              color: Colors.black.withOpacity(0.2)
          )]
      ),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child:Image.asset(ImageConstant.food2,height: 90,width: 90,fit: BoxFit.cover,),

          ),
          const SizedBox(width: 10,),
          Column(spacing: 5, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Falvortose',style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
              const SizedBox(height: 3,),
              Text('Lesb,pizza',style: TextStyle(
                  color: appTheme.gray5002,
                  fontSize: 12, fontWeight: FontWeight.w500
              ),)
            ],
          )
        ],
      ),);
  }

}