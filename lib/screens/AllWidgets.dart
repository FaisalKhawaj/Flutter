import 'package:first_app/screens/AllButtons.dart';
import 'package:first_app/screens/CustomTextInput.dart';
import 'package:first_app/screens/Home.dart';
import 'package:first_app/screens/SearchDeals.dart';
import 'package:flutter/material.dart';


class AllWidgets extends StatelessWidget{
  const AllWidgets({super.key});

  Route _createRoute(Widget destination) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => destination,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.notification_important)),

    ],
    title:const Text('All Widgets',) ,
    backgroundColor: Colors.amberAccent ,
    shape: const RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(20))),
    foregroundColor: Colors.blue,
  ),
  body:
  Center( child:
  Column(
    // spacing: 10,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(padding:const EdgeInsets.all(20.0),
      child: SizedBox( width: double.infinity,height: 50.0,
        child:   TextButton(
            style: ButtonStyle(
                foregroundColor:WidgetStateProperty.all(Colors.black),
                backgroundColor: WidgetStateProperty.all(Colors.amberAccent)),
            onPressed: (){
              Navigator.of(context).push(_createRoute(const AllButtons()));
            }, child: const Text('Buttons')),
      ),
      ),
    const SizedBox(height: 5,),
    OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          fixedSize: Size(MediaQuery.of(context).size.width-50, 45),
side: const BorderSide(color: Colors.black,width: 1),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        onPressed: (){
          Navigator.of(context).push(_createRoute(const CustomTextInput()));

        }, child: const Text('TextInput')),
      const SizedBox(height: 5,),
    const Text('Images',
      style: TextStyle(fontSize: 22, color: Colors.black),),
      ElevatedButton(onPressed: (){
        Navigator.of(context).push(_createRoute(const Home()));

      }, child: const Text('Home')),
      const SizedBox(height: 5,),
      OutlinedButton(style:OutlinedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width-50, 50)
      ), onPressed: (){
        Navigator.of(context).push(_createRoute(const SearchDeals()));
      }, child: const Text('Search Deals'))
],)
  ,),backgroundColor: Colors.white,);


  }
}