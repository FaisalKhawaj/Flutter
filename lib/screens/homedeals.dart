

import 'package:first_app/app_export.dart';
import 'package:first_app/main.dart';
import 'package:first_app/screens/auth/widget/DealsButton.dart';
import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

// Step 1: Define a custom class with properties icon, type, and count
class MyItem {
  final IconData icon;  // Icon for the item
  final String type;    // Type of the item
  final int count;      // Count of the item

  MyItem({required this.icon, required this.type, required this.count});
}



class HomeDeals extends StatelessWidget{
   HomeDeals({super.key});

  final List<MyItem> dealCategory=[
    MyItem(icon: Icons.star, type: 'Completed', count: 120),
    MyItem(icon: Icons.favorite, type: 'Active', count: 45),
    MyItem(icon: Icons.pending, type: 'Pending', count: 32),
    MyItem(icon: Icons.cancel, type: 'Cancelled', count: 02),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // backgroundColor: AppColors.secondaryBg,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Home',style: TextStyle(
              fontSize: 30,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold
            ),),
            const Text('Worry free deals',)
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_important,color: AppColors.primaryDescription,size: 30,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: AppColors.primaryDescription,size: 30)),
        ],
      ),
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child:Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Your Deals',style:R.textStyle.dealCategoryTitle()),
          SizedBox(height: 20,),

          SizedBox(height: 175,

            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: dealCategory.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder:(context,index){
                return  DealsButton(item:dealCategory[index]);
              },
            ),
          )

        ],) ,)),
    );
  }

}