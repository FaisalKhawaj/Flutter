

import 'package:first_app/app_export.dart';
import 'package:first_app/main.dart';
import 'package:first_app/screens/auth/widget/DealsButton.dart';
import 'package:first_app/widgets/ActionDealsListItem.dart';
import 'package:first_app/widgets/deals_action_type.dart';
import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

// Step 1: Define a custom class with properties icon, type, and count
class MyItem {
  final IconData icon;  // Icon for the item
  final String type;    // Type of the item
  final int count;      // Count of the item

  MyItem({required this.icon, required this.type, required this.count});
}


class DealActionListItem{
  final String name;
  final String company;
  final String dealType;
  final String date;
  final double price;

  DealActionListItem({required this.company,required this.date,required this.dealType,required this.name,required this.price});

}

class DealActionItem{
  final IconData icon;
  final String type;

  DealActionItem({required this.icon,required this.type});
}

class HomeDeals extends StatefulWidget{

  @override
  _HomeDealsState createState()=> _HomeDealsState();

}



class _HomeDealsState extends State<HomeDeals>{
  // _HomeDealsState({super.key});
int selectedIndex = 0;
int selectedActionNeeded=0;
int selectedDealsType=0;

  final List<MyItem> dealCategory=[
    MyItem(icon: Icons.star_outline, type: 'Completed', count: 120),
    MyItem(icon: Icons.favorite_outline_outlined, type: 'Active', count: 45),
    MyItem(icon: Icons.pending_outlined, type: 'Pending', count: 32),
    MyItem(icon: Icons.cancel, type: 'Cancelled', count: 02),
  ];

  final List<DealActionItem> dealActionTypes=[
    DealActionItem(icon: Icons.access_alarm_sharp,type: 'Action Required'),
    DealActionItem(icon: Icons.baby_changing_station,type: 'Active Deals'),
    DealActionItem(icon: Icons.backpack,type: 'Pending Deals'),
  ];

  final List<DealActionListItem> dealActionList=[
    DealActionListItem(company: 'Eric Fowler', name: 'Sifa Carpet Fowler Hand Woven',price: 1000,dealType: 'PENDING DEALS',date: 'Fri,19 Aug'),
    DealActionListItem(company: 'Eric Fowler', name: 'Sifa Test',price: 100,dealType: 'MODIFY REQUEST',date: 'Fri,1 Aug'),
    DealActionListItem(company: 'Eric ', name: 'Sifa TEST B',price: 500,dealType: 'MODIFY REQUEST',date: 'Fri,20 Aug'),
    DealActionListItem(company: 'Eric ', name: 'Sifa TEST B',price: 500,dealType: 'MODIFY REQUEST',date: 'Fri,21 Aug'),


  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenWidth=MediaQuery.of(context).size.width;
    final isMobile=screenWidth<600;
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
             Text('Home',style: R.textStyle.homeDealHeaderTitle()),
             Text('Worry free deals',style: R.textStyle.homeDealHeaderDescription(),)
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.notification_important,color: AppColors.black,size: 30,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search_outlined,color: AppColors.black,size: 30)),
        ],
      ),
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child:SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                return  GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });
                  },
                  child: DealsButton(item:dealCategory[index],isSelected:selectedIndex==index),
                );
              },
            ),
          ),
          SizedBox(height: 40,),
          Text('My Deals',style:R.textStyle.dealCategoryTitle()),
          Text('4 Deals need your action',style: R.textStyle.homeDealHeaderDescription().copyWith(fontSize: 14, fontWeight: FontWeight.w400),),
          SizedBox(height: 20,),


          SizedBox(
            height:50,
            child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:dealActionTypes.length , itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  setState(() {
                    selectedDealsType=index;
                  });
                },
                child: DealsActionType(item:dealActionTypes[index],isSelected:selectedDealsType==index),
              );
            }),),

SizedBox(
  height: MediaQuery.of(context).size.height*0.6,
  child:  ListView.builder(
      itemCount: dealActionList.length,
      itemBuilder: (context,index){
        return  ActionDealsListitem();
      }) ,
)





        ],),) ,) ),
    );
  }

}