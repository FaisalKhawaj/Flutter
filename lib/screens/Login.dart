import 'package:first_app/app_export.dart';
import 'package:first_app/routes/my_navigator.dart';
import 'package:first_app/screens/Signup.dart';
import 'package:first_app/widgets/CustomButton.dart';
import 'package:first_app/widgets/CustomCheckbox.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});


  @override
  State<Login> createState()=>_LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String get email => _emailController.text;

  // String get password => _passwordController.text;
  // Route _createRoute(Widget destination) {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => destination,
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(0.0, 1.0);
  //       const end = Offset.zero;
  //       const curve = Curves.ease;
  //
  //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //
  //       return SlideTransition(
  //         position: animation.drive(tween),
  //         child: child,
  //       );
  //     },
  //   );
  // }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
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
                side:const  BorderSide(width: 1,color: AppColors.inputPlaceholderColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            icon: const Icon(size: 30, Icons.chevron_left)),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
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
                const  SizedBox(
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
                  padding:const EdgeInsets.only(bottom: 16),
                  child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                          color: AppColors.inputPlaceholderColor,
                        ),
                        filled: true,
                        focusColor: AppColors.inputBorder,
                        fillColor: AppColors.inputBackground,
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:const  BorderSide(width: 1, color: Colors.red),
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

                Padding(
                  padding:const EdgeInsets.only(bottom: 16),
                  child: TextField(
                    controller: _passwordController,
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
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.inputBorder)),
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.remove_red_eye)),
                        hintText: 'Password',
                        border:const OutlineInputBorder(
                          borderSide:  BorderSide(
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
                        const  Text('Remember me',style: TextStyle(
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

                        child: const Text('Forgot password?',style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter'
                        ),))
                  ],
                ),
                const SizedBox(height: 30,),
                CustomButton(
                  textColor: Colors.white,
                  buttonName: 'LOG IN',
                  onPressed: (){},
                  backgroundColor: AppColors.primaryButton,
                  width: MediaQuery.of(context).size.width*0.9,
                )
                ,
                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 2,
                  children: [
                    const  Text("Don't have an account yet?",style: TextStyle(
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
                          MyNavigator.navigateTo(context, Signup());

                          // Navigator.of(context).push(_createRoute(const Signup()));

                        }, child: const Text('Sign up',style: TextStyle(
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
      ),
    );


}


}
