

import 'package:first_app/app_export.dart';
import 'package:flutter/material.dart';

class SearchDeals extends StatelessWidget{
  const SearchDeals({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFfefefe),
      appBar:
      PreferredSize(preferredSize: const Size(double.infinity, 100),
          child:
          Padding(padding: const EdgeInsets.symmetric(vertical: 12),
            child: AppBar(
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
                Center(child:
                Row(children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_left)),
                  const Text('Deals'), ],),),

                IconButton(onPressed: (){}, icon: const Icon(Icons.search))
              ],),),),),
      body:Padding(padding: const EdgeInsets.all(20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                        offset: const Offset(0,1),
                        color: Colors.black.withOpacity(0.2)
                    )],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:Row(children: [
                  const Expanded(child:  TextField(style:TextStyle(
                      color: Color(0xFF9B9B9B)
                  ), decoration: InputDecoration(
                    // labelText: 'Search Deals',
                    hintText: 'Search Deals',
                    border: InputBorder.none,

                    contentPadding: EdgeInsets.symmetric(horizontal: 20), // Padding inside TextField
                  ),),),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.search,color:Color(0xFF9B9B9B)))
                ],) ,
              ),
            ), // Search Field
            const SizedBox(height: 20,),
            Expanded(child:
            GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: 20, // Replace with the length of your list
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columns
                crossAxisSpacing: 10, // Space between columns
                mainAxisSpacing: 10, // Space between rows
                childAspectRatio: 0.7, // Adjust this to control the height/width ratio
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0.5,
                        blurRadius: 3,
                        offset: const Offset(0, 1),
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        child: Image.asset(
                          ImageConstant.food2, // Replace with your image source
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          spacing: 10,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10% Rabatt',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Discount Details', // Replace with your second text
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                    ],
                  ),
                );
              },
            )
            )



          ],
        ),
      ),
    );
  }
  
}