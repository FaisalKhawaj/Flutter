
import 'package:first_app/routes/app_routes.dart';
import 'package:first_app/routes/app_pages.dart';

import 'package:first_app/screens/AllWidgets.dart';
import 'package:first_app/screens/auth/view/Login.dart';

import 'package:first_app/screens/auth/view/Onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX


void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white30),
        useMaterial3: true,
      ),
    
      initialRoute: Routes.onboarding, // Set your initial route
      getPages: AppPages.pages, // Register the pages from AppPages
    );
  }
}

