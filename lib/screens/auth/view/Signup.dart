

import 'package:first_app/app_export.dart';
import 'package:first_app/routes/my_navigator.dart';
import 'package:first_app/theme/app_colors.dart';
import 'package:first_app/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget{
  const Signup({super.key});

  @override
  State<Signup> createState()=>_SignupState();
}

class _SignupState extends State<Signup>{

  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _fullnameController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _confirmPasswordController=TextEditingController();

String get email => _emailController.text;
String get fullName=>_fullnameController.text;
String get password=>_passwordController.text;
String get confirmPassword=>_confirmPasswordController.text;



  @override
  void dispose() {
    _emailController.dispose();
    _fullnameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
     body: GestureDetector(
         onTap: (){
           FocusScope.of(context).requestFocus(FocusNode());
         },
         child: SingleChildScrollView(
           child:  Column(
             children: [
               // Header Logo Title
               Container(
                 alignment: Alignment.center,
                 // constraints:,
                 width: double.infinity,
                 height: 250,
                 decoration: BoxDecoration(
                     color: AppColors.primaryButton,
                     borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20))),
                 child: Center(
                   child:
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Image.asset(ImageConstant.signupLogo,fit: BoxFit.contain, height: 120, width: 120,),
                       Text('YAKEEN KAR',style: TextStyle(color: AppColors.white, fontFamily:'Inter', fontSize:28, fontWeight: FontWeight.bold),),

                     ],
                   ),
                 )
                 ,
               ),
               // Header Logo Title Ends
               SizedBox(height: 20,),
               const Text(
                 'Hi There! 👋',
                 style: TextStyle(
                     fontSize: 25,
                     color: AppColors.primaryHeading,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Inter',
                     letterSpacing: 1),
               ),
               const Text(
                 'Welcome back, Sign up for your account',
                 style: TextStyle(
                     fontSize: 16,
                     fontFamily: 'Inter',
                     color: AppColors.primaryDescription),
               ),

               Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                 child:  TextField(
                   decoration: InputDecoration(
                     hintText: 'Full name',
                     filled: true,
                     focusColor: AppColors.inputBorder,
                     fillColor: AppColors.inputBackground,
                     errorBorder: OutlineInputBorder(
                         borderSide:  BorderSide(
                             width: 1, color: Colors.red),
                         borderRadius: BorderRadius.circular(8)),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: BorderSide(
                           width: 1,
                           color: AppColors.inputBorder.withOpacity(0.8)),
                     ),
                     border: OutlineInputBorder(
                         borderSide:  BorderSide(
                             width: 1, color: AppColors.inputBorder),
                         borderRadius: BorderRadius.circular(8)),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: const BorderSide(
                           width: 1, color: AppColors.inputBorder),
                     ),

                   ),
                 ),

               ),
               // Email
               Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                 child:  TextField(
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     hintText: 'Email',
                     filled: true,
                     focusColor: AppColors.inputBorder,
                     fillColor: AppColors.inputBackground,
                     errorBorder: OutlineInputBorder(
                         borderSide:  BorderSide(
                             width: 1, color: Colors.red),
                         borderRadius: BorderRadius.circular(8)),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: BorderSide(
                           width: 1,
                           color: AppColors.inputBorder.withOpacity(0.8)),
                     ),
                     border: OutlineInputBorder(
                         borderSide:  BorderSide(
                             width: 1, color: AppColors.inputBorder),
                         borderRadius: BorderRadius.circular(8)),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: const BorderSide(
                           width: 1, color: AppColors.inputBorder),
                     ),

                   ),
                 ),),

               // Phone number
               Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                 child:  TextField(
                   keyboardType: TextInputType.phone,
                   decoration: InputDecoration(hintText: 'Mobile Number', filled: true, focusColor: AppColors.inputBorder, fillColor: AppColors.inputBackground,
                     errorBorder: OutlineInputBorder(
                         borderSide:  BorderSide(
                             width: 1, color: Colors.red),
                         borderRadius: BorderRadius.circular(8)),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: BorderSide(
                           width: 1,
                           color: AppColors.inputBorder.withOpacity(0.8)),
                     ),
                     border: OutlineInputBorder(
                         borderSide:  BorderSide(
                             width: 1, color: AppColors.inputBorder),
                         borderRadius: BorderRadius.circular(8)),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: const BorderSide(
                           width: 1, color: AppColors.inputBorder),
                     ),),
                 ),),

               // Password
               Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                 child:  TextField(obscureText: true,
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(hintText: 'Password', filled: true, suffixIcon: Icon(Icons.remove_red_eye), focusColor: AppColors.inputBorder, fillColor: AppColors.inputBackground,
                     errorBorder: OutlineInputBorder(
                         borderSide:  BorderSide(
                             width: 1, color: Colors.red),
                         borderRadius: BorderRadius.circular(8)),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: BorderSide(
                           width: 1,
                           color: AppColors.inputBorder.withOpacity(0.8)),
                     ),
                     border: OutlineInputBorder(
                         borderSide:  BorderSide(
                             width: 1, color: AppColors.inputBorder),
                         borderRadius: BorderRadius.circular(8)),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: const BorderSide(
                           width: 1, color: AppColors.inputBorder),
                     ),),
                 ),),
               // Confirm Password
               Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                 child: TextField(
                   obscureText: true,

                   decoration: InputDecoration(
                     filled: true,
                     suffixIcon: Icon(Icons.remove_red_eye),
                     fillColor: AppColors.inputBackground,
                     focusColor: AppColors.inputBackground,
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: BorderSide(
                           width: 1,
                           color: AppColors.inputBorder.withOpacity(0.8)),
                     ),
                     focusedErrorBorder: OutlineInputBorder(
                         borderSide: BorderSide(width: 1,color: Colors.red)
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: BorderSide(
                           width: 1,
                           color: AppColors.inputBorder.withOpacity(0.8)),
                     ),
                     hintText: 'Confirm Password',
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),

                   ),
                 ),
               ),

               SizedBox(height: 20,),

               CustomButton(
                 textColor: Colors.white,
                 buttonName: 'Signup',
                 onPressed: (){},
                 backgroundColor: AppColors.primaryButton,
                 width: MediaQuery.of(context).size.width*0.9,
               ),

               const SizedBox(height: 20,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 spacing: 2,
                 children: [
                   const  Text("Already have an account?",style: TextStyle(
                       color: AppColors.primaryDescription,
                       fontSize: 14,
                       fontFamily: 'Inter'
                   ),),
                   OutlinedButton(
                       style: OutlinedButton.styleFrom(
                           elevation: 0,
                           overlayColor: Colors.transparent,
                           enableFeedback: false,
                           shadowColor: Colors.transparent,
                           backgroundColor: Colors.transparent,
                           surfaceTintColor: Colors.transparent,
                           side: const BorderSide(width: 0,color: Colors.transparent),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
                       ),
                       onPressed: (){
                         MyNavigator.navigateTo(context, Login());

                         // Navigator.of(context).push(_createRoute(const Signup()));

                       }, child: const Text('Sign in',style: TextStyle(
                       fontFamily: 'Inter',color: AppColors.black,
                       fontWeight: FontWeight.bold
                   ),))
                 ],
               ),
               const SizedBox(height: 30,),



             ],
           ),
         ),
       ),
    );
  }
}