import 'package:first_app/app_export.dart';
import 'package:first_app/widgets/CustomCheckbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: false,
        backgroundColor: AppColors.backgroundPrimary,
        title: IconButton.outlined(
            onPressed: () {},
            style: IconButton.styleFrom(
side: BorderSide(width: 1,color: AppColors.inputPlaceholderColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            icon: Icon(size: 30, Icons.chevron_left)),
      ),
      body: SingleChildScrollView(
        primary: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                  child: Image.asset(
                ImageConstant.loginImage,
                height: 250,
                width: 250,
                fit: BoxFit.contain,
              )
                  // Image(image: ) ,
                  ),
              SizedBox(
                height: 50,
              ),
              const Text(
                'Hi There! 👋',
                style: TextStyle(
                    fontSize: 25,
                    color: AppColors.primaryHeading,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    letterSpacing: 1),
              ),
              const Text(
                'Welcome back, Log in to your account',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                    color: AppColors.primaryDescription),
              ),
              const SizedBox(
                height: 25,
              ),
              // Email
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: AppColors.inputPlaceholderColor,
                      ),
                      filled: true,
                      focusColor: AppColors.inputBorder,
                      fillColor: AppColors.inputBackground,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 1, color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 1,
                            color: AppColors.inputBorder.withOpacity(0.8)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            width: 1, color: AppColors.inputBorder),
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.inputBorder),
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
              // Password fiedl
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.inputBackground,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            width: 1, color: AppColors.inputBorder),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 1, color: AppColors.inputBorder)),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1, color: AppColors.inputBorder),
                      )),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomCheckbox(),
                      Text('Remember me',style: TextStyle(
                        color: AppColors.primaryDescription,
                        fontSize: 16,
                        fontFamily: 'Inter'
                      ),)
                    ],
                  ),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.zero,
elevation: 0,
foregroundColor: AppColors.primaryHeading,
                        backgroundColor: Colors.transparent,
                        shape:const RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                      ),

                      child: Text('Forgot password?',style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter'
                      ),))
                ],
              ),
              SizedBox(height: 30,),

              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.primaryButton,
                      overlayColor: AppColors.primaryButton,
                    elevation: 0,
                      fixedSize: Size(MediaQuery.of(context).size.width*0.9,48),
                      shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  onPressed: (){}, child: Text('LOG IN')),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 2,
                children: [
                  Text("Don't have an account yet?",style: TextStyle(
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
              side: BorderSide(width: 0,color: Colors.transparent),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
            ),
                      onPressed: (){}, child: Text('Sign up',style: TextStyle(
                    fontFamily: 'Inter',color: AppColors.black,
                    fontWeight: FontWeight.bold
                  ),))
                ],
              ),

              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
