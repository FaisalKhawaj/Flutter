import 'package:first_app/app_export.dart';
import '../../../resources/resources.dart';
import 'package:first_app/main.dart';
import 'package:flutter/material.dart';

class ActionDealsListitem extends StatelessWidget {
   ActionDealsListitem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    final isMobile=screenWidth<600;
    return  Container(
        margin: const EdgeInsets.only(top: 10,bottom: 10),
        padding: const EdgeInsets.all(10),
        width:isMobile?screenWidth*0.9:500,
        height: 140,
        decoration: BoxDecoration(color: Colors.white,
            boxShadow:[BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0.3,
                blurRadius: 2
            )],
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(ImageConstant.food1,fit: BoxFit.cover,height: 85,width: 85,),
            ),
            // Image ends
            const SizedBox(width: 10,),
            // Inner Wrap
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sifa Carpet Sifa Carpet Sifa Carpet',
                  textAlign: TextAlign.left,
                  maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      fontSize: 15
                  ),),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text('Dealing with ',style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400
                  ),),
                  Text('Eric Fowler',style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w500
                  ),),

                ],),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                  decoration: BoxDecoration(
                      color:AppColors.pendingDeal
                  ),
                  child: Text('PENDING DEALS'),
                ),
                Text('on Fri, 19 Aug',style: TextStyle(
                  color: AppColors.primaryDescription,
                ),)
              ],
            )),

            // Inner Wrap ends

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6,vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 2,
                          spreadRadius: 0.2
                      )]
                  ),
                  child:Row(
                    children: [
                      const    Text('Rs'),
                      const  Text('10,000',style: TextStyle(
                          color: AppColors.primaryButton,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                OutlinedButton(

                    style:OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: AppColors.primaryButton,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                            side: BorderSide(width: 0)
                        )
                    ) ,
                    onPressed: (){},

                    child: Text('VIEW'))
              ],
            )


          ],
        )
    );
  }
}
