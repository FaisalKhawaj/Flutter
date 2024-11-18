import 'package:first_app/utils/image_constants.dart';
import 'package:first_app/widgets/CardTitleSubtitleMore.dart';
import 'package:first_app/widgets/FoodItems.dart';
import 'package:first_app/widgets/FoodLists.dart';
import 'package:flutter/material.dart';

 class Home extends StatelessWidget {
  const Home({super.key});



@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: PreferredSize(preferredSize:const Size.fromHeight(90), child:
        Padding( padding:const EdgeInsets.symmetric(vertical: 10,),
        child:  AppBar(
          surfaceTintColor: Colors.white,
          shape:const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))) ,
          automaticallyImplyLeading: false,
          elevation: 2,
          // centerTitle: true,
          shadowColor: Colors.black.withOpacity(0.3), // Sets the shadow color with some opacity
          backgroundColor: Colors.white,
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(ImageConstant.homeLogoHeader,
                  height: 60,
                  width: 60,
                  fit: BoxFit.contain)
              ,
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),

          ],
          ),
        )),

      body: SingleChildScrollView(
        child: Padding( padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardTitleSubtitleMore(
                  actionLabel: 'Se mer',
                  title: 'Heta deals',
                  subtitle: 'Uppstack nya deals',
                  onActionPressed: (){
                  //
                  },
              ),
              const SizedBox(height: 14,),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: Ink(
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle,
                  gradient:const LinearGradient(
                    colors:  [Color(0xFFFF9F06), Color(0xFFFFE1B4)],
                  begin: Alignment.topCenter,
                    end:Alignment.bottomRight,
                  ),
                ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(ImageConstant.list1,width: 60,height: 60,),
                  const  SizedBox(height: 2,),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Lunch',style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize :22,
                          ),),
                          Text('01/03/22-01/05/22',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize:12,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                          Text('Mon-Fri',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize:12,
                              fontWeight: FontWeight.w400
                          ),),
                          SizedBox(height: 3,),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Oppna',style: TextStyle(color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize:14,
                                  fontWeight: FontWeight.w400),),
                              Icon(Icons.chevron_right,color: Colors.white,)
                            ],
                          )
                        ],
                      ),
                      Text('50%',style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize:45,
                          fontWeight: FontWeight.w700
                      ),)
                    ],
                    ),
                  ],
                ),
              )
              ),
              const SizedBox(height: 20,),
              CardTitleSubtitleMore(
                actionLabel: 'Se mer',
                title: 'Restauranger',
                subtitle: 'Vad ar du sugen pa',
                onActionPressed: (){
                  //
                },
              ),
             const SizedBox(height: 20,),
              // FoodItems(name: "Nonna's", description: "pizza, pasta, salad, lunch, hamburger "),
              // Products
              SizedBox(height: 270,  child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context,int index){
                    return const FoodItems(name: "Nonna's", description: "pizza, pasta, salad, lunch, hamburger ");
                  }),),

              const SizedBox(height: 20,),
              CardTitleSubtitleMore(
                actionLabel: 'Se mer',
                title: 'Nara mig',
                subtitle: 'Hitta närmsta stammiz restaurang!',
                onActionPressed: (){
                  //
                },
              ),
              const SizedBox(height: 14,),

              SizedBox(
                height: MediaQuery.of(context).size.height*0.4,
                child: ListView.builder(scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (context,index){
                  return const FoodLists(title: "This",description: "s");
                }),
              )
            ],
          ),


        ),
      ),
    );
  }
}