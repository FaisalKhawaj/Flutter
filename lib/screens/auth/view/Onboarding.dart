

import 'package:first_app/app_export.dart';
import 'package:first_app/routes/app_routes.dart';
import 'package:first_app/routes/my_navigator.dart';
import 'package:first_app/screens/auth/view/Login.dart';
import 'package:first_app/screens/auth/view/Signup.dart';
import 'package:first_app/widgets/CustomButton.dart';
import '../../../resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:first_app/widgets/CustomButton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget{
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();

}

class _OnboardingScreenState extends State<Onboarding>{


  final List<Map<String, String>> onboardingData = [
    {
      'image':ImageConstant.onboarding1,
      'title': 'Buyer & Seller Agree To Terms',
      'description': 'Submits Payment To Yakeen Kar',
    },
    {
      'image': ImageConstant.onboarding1,
      'title': 'Payment Secured',
      'description': 'Payment is securely held until delivery',
    },
    {
      'image': ImageConstant.onboarding1,
      'title': 'Order Delivered',
      'description': 'Payment is released upon delivery',
    },
  ];
  int currentIndex = 0;
  final CarouselSliderController _carouselController = CarouselSliderController();



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(        automaticallyImplyLeading:false, backgroundColor: Colors.white , title: Text(''),),
      body: SafeArea(child:
      Column(
        children: [
   Expanded(child: CarouselSlider.builder(
       itemCount: onboardingData.length,
       carouselController: _carouselController,
       itemBuilder: (context,index,realIdx){
     return OnboardingContent(
         image: onboardingData[index]['image']!,
         title: onboardingData[index]['title']!,
         description: onboardingData[index]['description']!,);
          },
       options: CarouselOptions(
         viewportFraction: 1.0,
         onPageChanged: (index,reason){
         setState((){
           currentIndex=index;
         });
           },
         height: MediaQuery.of(context).size.height*0.75,
         pageSnapping: true,
         enlargeCenterPage: true,
         autoPlay: false,
       )),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: onboardingData.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.blue,
                dotColor: AppColors.primaryInactiveDot,
                dotHeight: 8.0,
                dotWidth: 10.0,
                expansionFactor: 4,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child:currentIndex<onboardingData.length-1?  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton( onPressed: (){
                  Get.toNamed(Routes.login);
                },style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.primaryButton,
                  side: BorderSide(width: 1,color: AppColors.primaryButton),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),  child: Text('SKIP',style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),)),
                OutlinedButton( onPressed: (){

                },style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.yellow,
                  backgroundColor: AppColors.primaryButton,
                  side: BorderSide(width: 1,color: AppColors.primaryButton),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),  child: Text('NEXT',style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),))

              ],
            ):Column(
              children: [
                // Login Button
                CustomButton(
                  textColor: Colors.yellow,
                  buttonName: 'LOG IN',
                  onPressed: (){
                    Get.toNamed(Routes.login);
                  },
                  backgroundColor: AppColors.primaryButton,
                  width: MediaQuery.of(context).size.width*0.9,
                ),
           const SizedBox(height: 20,),
                // Signup
                CustomButton(
                  textColor: Colors.yellow,
                  buttonName: 'SIGN UP',
                  onPressed: (){
                    Get.toNamed(Routes.signup);
                  },
                  backgroundColor: AppColors.primaryButton,
                  width: MediaQuery.of(context).size.width*0.9,
                )
              ],
            ),
          )
      ],)
      )
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: Image.asset(image),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Text(
                  title,
                  style:R.textStyle.boldOnboarding(),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  style:R.textStyle.descriptionOnboarding(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}