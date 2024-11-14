

import 'package:first_app/app_export.dart';
import 'package:first_app/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget{

  final String name;
  final String description;

  const FoodItems({super.key,
  required this.name,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left:2,right: 10,bottom: 2),
      constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width*0.5,height: 280,),
      // color: Colors.red,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(spreadRadius: 0.5,
            blurRadius: 2,
            offset: const Offset(0,2),
            color: Colors.black.withOpacity(0.2)
        )],
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(borderRadius:const BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)),
            child:
            Image.asset(ImageConstant.food1,height: 150 ,fit:BoxFit.cover, width: MediaQuery.of(context).size.width,)
            ,),
          const  SizedBox(height: 15,),
          const Text("Nonna's",style: TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontWeight:FontWeight.w600
            // fontWeight:

          ),),
          const  SizedBox(height: 5,),
          Text('pizza,pasta,salad,lunch,hamburger',style:theme.textTheme.bodyMedium)
        ],
      ),
    );
  }

}