


import 'package:first_app/app_export.dart';
import 'package:first_app/routes/app_routes.dart';
import 'package:first_app/screens/auth/widget/OtpInputField.dart';
import 'package:first_app/widgets/CustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatefulWidget{

  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification>{


  @override
  Widget build(BuildContext context) {

    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = AppColors.inputBorder;

    final defaultPinTheme=PinTheme(
      width: 60,
      height: 60,
      textStyle:const TextStyle(
          fontSize: 22,
          color: AppColors.primaryDescription
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color:borderColor),
      ),
    );

    final focusedPinTheme= defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: focusedBorderColor),
      ),
    );

    final submittedPinTheme=defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.primaryDescription),
      ),
    );

    final errorPinTheme=defaultPinTheme.copyBorderWith(
      border: Border.all(color: Colors.redAccent),
    );

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: IconButton(style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
          side:  BorderSide(width: 1,color: AppColors.inputBorder)
          )
        ), onPressed: (){
          Navigator.of(context).maybePop();
        }, icon:const Icon(Icons.chevron_left,color: Colors.black,)),
      ),

      body:  GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Column(
          children: [
            Expanded(child:Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                child:Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const SizedBox(height: 40,),
                  const Text('Verification code 🚨',  style: TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.bold,),),
                  const  SizedBox(height: 4,),
                  const Text('The verification code was sent to youremail. Code expiration time is 120s.Please enter the code:',
                    style: TextStyle(color: AppColors.primaryDescription, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Inter'),
                  ),
                  const SizedBox(height: 25,),

                  OtpInputField(defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme:submittedPinTheme,
                    errorPinTheme: errorPinTheme,
                    onCompleted: (val){
                    Get.toNamed(Routes.login);
                    },
                  )




                ])) ,
            ) ,
            CustomButton(buttonName: 'SEND AGAIN',height: 55, width: MediaQuery.of(context).size.width, onPressed: (){
              showCupertinoDialog(context: context, builder: (BuildContext context){
                return CupertinoAlertDialog( title: Text('Message Sent again'),
                  content: Text('This is the content of the alert dialog.'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text('Cancel')),
                    TextButton(
                      child: const Text('Confirm'),
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog

                        // Handle the confirm action
                      },
                    ),
                  ],


                );
              });
            }),
            const SizedBox(height:20),
          ],
        ),
      ),

    );
  }

}