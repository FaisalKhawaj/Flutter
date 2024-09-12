

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchDeals extends StatelessWidget{
  const SearchDeals({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFfefefe),
      appBar: PreferredSize(preferredSize: Size(double.infinity, 100),
          child:  Padding(padding: EdgeInsets.symmetric(vertical: 12),child: AppBar(
            surfaceTintColor: Colors.white,
            shape:const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))) ,
            automaticallyImplyLeading: false,
            elevation: 4,
            shadowColor: Colors.black.withOpacity(0.6), // Sets the shadow color with some opacity
            backgroundColor: Colors.white,
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Center(child:Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left)), Text('Deals'), ],),),

                IconButton(onPressed: (){}, icon: Icon(Icons.search))
              ],),),),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Center(
              child:    Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      spreadRadius: 0.5,
                      // color: Colors.white.withOpacity(0.7),
                      blurRadius: 3,
                        offset: Offset(0,1),
                        color: Colors.black.withOpacity(0.2)
                    )],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:Row(children: [
                 Expanded(child:  TextField(style:TextStyle(
                   color: Color(0xFF9B9B9B)
                 ), decoration: InputDecoration(
                   // labelText: 'Search Deals',
                  hintText: 'Search Deals',
                   border: InputBorder.none,

                   contentPadding: EdgeInsets.symmetric(horizontal: 20), // Padding inside TextField
                 ),),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search,color:Color(0xFF9B9B9B)))
                ],) ,
              ),
            ),
            const SizedBox(height: 20,),
            const Text('ss')

          ],
        ),
      ),
    );
  }
  
}