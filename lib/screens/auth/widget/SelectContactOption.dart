

import 'package:first_app/app_export.dart';
import 'package:first_app/screens/auth/widget/CustomRadioButton.dart';
import 'package:flutter/material.dart';

class SelectContactOption<T> extends StatefulWidget{
 final String title;
 final description;
 final IconData icon;
 final T value;
 final T groupValue;
 final ValueChanged<T?> onChanged;

 const SelectContactOption({super.key,this.icon=Icons.phone, required this.title, required this.description, required this.value, required this.groupValue, required this.onChanged});

 @override
 _SelectContactOptionState<T> createState()=> _SelectContactOptionState<T>();

}

class _SelectContactOptionState<T> extends State<SelectContactOption<T>>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  DecoratedBox(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border:Border.all(width: 1,color: AppColors.inputBorder)),
      child:Padding( padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child:  Row(children: [
           Icon(widget.icon),
          Expanded( child: Padding(padding:const EdgeInsets.symmetric(horizontal: 20), child:Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text(widget.title,style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400
              ),),
              Text(widget.description,style:const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400
              )),

            ],),

          ),),),

          CustomRadioButton(
            value:widget.value,
            groupValue:widget.groupValue,
            onChanged:widget.onChanged
          )
        ],),
      ),
    );
  }
}