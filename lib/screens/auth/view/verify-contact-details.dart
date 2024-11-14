

import 'package:first_app/app_export.dart';
import 'package:first_app/routes/my_navigator.dart';
import 'package:first_app/screens/auth/view/otp-verification.dart';
import 'package:first_app/screens/auth/widget/CustomRadioButton.dart';
import 'package:first_app/screens/auth/widget/SelectContactOption.dart';
import 'package:first_app/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class VerifyContactDetails extends StatefulWidget{

  const VerifyContactDetails({super.key});

  @override
  _VerifyContactDetailsState createState()=> _VerifyContactDetailsState();
}


class _VerifyContactDetailsState extends State<VerifyContactDetails>{
  String _selectedOption = 'sms';


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: IconButton(onPressed: (){
          Navigator.of(context).maybePop();
        },style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            side: const BorderSide(color: AppColors.inputPlaceholderColor,width: 1)
        ), icon: const Icon(Icons.chevron_left,color: Colors.black,)),
      ),
      body:  Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40,),
                const Text('Verify contact details! 🧐',  style: TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.bold,),),
                const  SizedBox(height: 4,),
                const Text('Select a mobile number or an email address to verify your contact information by sending a verification code:',
                  style: TextStyle(color: AppColors.primaryDescription, fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Inter'),
                ),
                const SizedBox(height: 25,),


                SelectContactOption(title: 'Via Sms', description: '********81', value: 'sms', groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    }),
                SizedBox(height:15),
                SelectContactOption(title: 'Via Email',icon: Icons.email,  description: 'abv@gmail.com', value: 'email', groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    }),

              ],
            )),


            CustomButton(
              textColor: Colors.white,
              buttonName: 'Send OTP',
              onPressed: (){
                MyNavigator.navigateTo(context, OtpVerification());

              },
              backgroundColor: AppColors.primaryButton,
              width: MediaQuery.of(context).size.width*0.9,
            ),

            SizedBox(height: 40,)








          ],
        ),
      ),
    );
  }


}