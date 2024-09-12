import 'package:flutter/material.dart';


class AllButtons extends StatelessWidget{
  const AllButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text('Buttons'),
      ) ,
      body: Center( child:
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                // shadowColor: Colors.black,
                // elevation: 0,
                surfaceTintColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                // side:const BorderSide(color: Colors.red,width:0.5),
                // shape: BorderRadius.all(Radius.circula),
                fixedSize: Size(MediaQuery.of(context).size.width-100,45),
              ),
              onPressed: (){}, child: const Text('Elevated Button',style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400
          ),)),
          SizedBox(height: 3,),
          ElevatedButton(onPressed: (){}, child: Text('Simple Elevated Button')),
          SizedBox(height: 3,),
          OutlinedButton(onPressed: (){}, child: Text('Simple Outlined Button')),
          SizedBox(height: 3,),
          OutlinedButton(style: OutlinedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            fixedSize: Size(MediaQuery.of(context).size.width-50, 45),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
          ), onPressed: (){}, child: Text(style: TextStyle(fontFamily: 'Poppins',
          fontSize: 16
          ), 'Outlined Button')),
          // RaisedButton(onPress:(){},child:Text('RaisedButton')),
        ],)
        ,),
    );
  }
}