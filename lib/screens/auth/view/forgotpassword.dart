

import 'package:first_app/app_export.dart';
import 'package:first_app/routes/my_navigator.dart';
import 'package:first_app/screens/auth/widget/SelectContactOption.dart';
import 'package:first_app/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget{

  const ForgotPassword({super.key});

 @override
  _ForgotPasswordState createState()=> _ForgotPasswordState();

}

class _ForgotPasswordState extends State<ForgotPassword>{
  String _selectedOption = 'sms';
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        surfaceTintColor: Colors.white,
        centerTitle: false,
        backgroundColor: Colors.white,
        title:SizedBox(width: 45,height: 45,child:  IconButton(onPressed: (){
          Navigator.of(context).maybePop();
        }, icon: Icon(Icons.chevron_left),style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            side: BorderSide(width: 1,color: AppColors.inputBorder)
        ),),)
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Column( children:[
          Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: Column(children:  [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [    Image.asset(ImageConstant.forgotBubble)],),
            const SizedBox(height: 40,),
            Text('Recover Your Password! 🧐',style: TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.bold,)),
            const SizedBox(height: 10,),

            Container(width: MediaQuery.of(context).size.width*0.8, child:
            const Text(textAlign: TextAlign.center, 'Select mobile number or email to verify by sending code:',
              style: TextStyle( color: AppColors.primaryDescription, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'Inter'),
            ), ),
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


          ],),
          ),
          SizedBox(height: 40,),
          CustomButton(
            textColor: Colors.white,
            buttonName: 'NEXT',
            onPressed: (){
              // MyNavigator.navigateTo(context, OtpVerification());

            },
            backgroundColor: AppColors.primaryButton,
            width: MediaQuery.of(context).size.width*0.9,
          ),



        ],),
      )),
    );
  }
}