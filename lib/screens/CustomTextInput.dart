import 'package:first_app/widgets/PasswordField.dart';
import 'package:flutter/material.dart';


class CustomTextInput extends StatelessWidget{
  const CustomTextInput({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TextInputs'),
      ),
      body: SingleChildScrollView(
        child: Center(child: Column(children: [
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(10),
            child:const TextField(decoration:const InputDecoration(labelText: 'FullName',border: const OutlineInputBorder()),),
          ),  // FullName
          SizedBox(height: 10,),
          Padding(padding:  EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration(
                labelText: 'Email',

                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(width: 1,color: Colors.black))
            ),style: TextStyle( color: Colors.red),),
          ), // Email
          SizedBox(height: 10,),
          Padding( padding: EdgeInsets.all(10),
            child:TextField(decoration: InputDecoration(
                labelText: 'Password',
                border: UnderlineInputBorder()
            ),
              obscureText: true,
            ) ,
          ), // Password
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration(
                labelText: 'LastName',
                border: InputBorder.none
            ),),
          ), // LastName
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration(
                labelText: 'Age',
                // labelStyle: ,
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none
            ),keyboardType: TextInputType.number,),
          ), // Age
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration(
              labelText: 'PhoneNumber',

              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone,color: Colors.black,size: 20,)
            ),keyboardType: TextInputType.phone,),
          ), // PhoneNumber,
          SizedBox(height: 10,),
TextField(decoration: InputDecoration(
  labelText: 'CustomBorder',
    labelStyle: TextStyle(color: Colors.black),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2),
    ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: Colors.orange, width: 4,style: BorderStyle.solid)
  )
),),
          SizedBox(height: 10,),
          Text('TextFormField'),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              errorText: "Username can't be empty"
              // error:
            ),
          ),
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(5),
          child:    TextField(
            decoration: InputDecoration(
              focusColor: Colors.black,
              labelStyle: TextStyle(color: Colors.black),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.black)),
              labelText: 'Description',
              alignLabelWithHint: true,
              // labelStyle: TextStyle(),
              border: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.black)),
            ),
            textAlignVertical: TextAlignVertical.top,
            maxLines: 5,
          ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.all(5),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Your Message',
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                counterText: "0/100", // Custom counter text
              ),
              maxLines: 5,
              maxLength: 100,
            ),
          ),
          SizedBox(height: 10,),
          PasswordField(
            // controller: , // Optional: Pass a TextEditingController if needed
            labelText: 'Enter your password', // Optional: Customize the label text
          ),
          SizedBox(height: 10,),


        ],),),
      ),
    );
  }
}