

import 'package:flutter/material.dart';
import '../../../resources/resources.dart';
import 'package:first_app/app_export.dart';
import 'package:first_app/screens/homedeals.dart'; // Import the MyItem class from homedeals.dart


class DealsButton extends StatelessWidget{

final MyItem item;


   DealsButton({super.key,required this.item,});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Container(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
      margin:const EdgeInsets.only(right: 15,top: 2,bottom: 2),
      constraints: BoxConstraints.expand(width:MediaQuery.of(context).size.width*0.32,height: 170 ),
      decoration: BoxDecoration(
        boxShadow: [R.textStyle.dealBoxShadow()],
        color: Colors.white,
        // color: R.colors.primaryGreyBox,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: BoxConstraints.expand(width: 40,height: 40),
            child:  Icon(item.icon),
            decoration: BoxDecoration(color: Colors.white,
              boxShadow: [R.textStyle.dealBoxShadow()],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
         Column(
            children:[
              Text(item.count.toString(), style: R.textStyle.unselectedDealButton(),),
           const SizedBox(height: 4,),
              Text(item.type,style: TextStyle(fontSize: 17,fontFamily: 'Inter',fontWeight: FontWeight.bold,)),
              Text('Deals',style: TextStyle(fontSize: 14,fontFamily: 'Inter',fontWeight: FontWeight.w400),)
            ] ,
          )
        ],
      ),
    );
  }

}