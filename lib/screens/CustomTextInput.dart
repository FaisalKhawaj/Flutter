import 'package:first_app/widgets/PasswordField.dart';
import 'package:flutter/material.dart';


class CustomTextInput extends StatelessWidget{
  const CustomTextInput({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextInputs'),
      ),
      body: SingleChildScrollView(
        child: Center(child: Column(children: [
          const SizedBox(height: 10,),
          const Padding(padding: EdgeInsets.all(10),
            child:TextField(
              decoration:InputDecoration(labelText: 'FullName',border: OutlineInputBorder()),),
          ),  // FullName
          const SizedBox(height: 10,),
          Padding(padding:  const EdgeInsets.all(10),
            child: TextField(keyboardType:TextInputType.emailAddress, decoration: InputDecoration(
                labelText: 'Email',

                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(width: 1,color: Colors.black))
            ),style: const TextStyle( color: Colors.red),),
          ), // Email
          const SizedBox(height: 10,),
          const Padding( padding: EdgeInsets.all(10),
            child:TextField(decoration: InputDecoration(
                labelText: 'Password',
                border: UnderlineInputBorder()
            ),
              obscureText: true,
            ) ,
          ), // Password
          const SizedBox(height: 10,),
          const Padding(padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration(
                labelText: 'LastName',
                border: InputBorder.none
            ),),
          ), // LastName
          const SizedBox(height: 10,),
          const Padding(padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration(
                labelText: 'Age',
                // labelStyle: ,
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none
            ),keyboardType: TextInputType.number,),
          ), // Age
          const SizedBox(height: 10,),
          const Padding(padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration(
              labelText: 'PhoneNumber',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone,color: Colors.black,size: 20,)
            ),keyboardType: TextInputType.phone,),
          ), // PhoneNumber,
          const SizedBox(height: 10,),
TextField(
  decoration: InputDecoration(
  labelText: 'CustomBorder',
    labelStyle: const TextStyle(color: Colors.black),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2),
    ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: const BorderSide(color: Colors.orange, width: 4,style: BorderStyle.solid)
  )
),),
          const SizedBox(height: 10,),
          const Text('TextFormField'),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
          const SizedBox(height: 10,),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              errorText: "Username can't be empty"
              // error:
            ),
          ),
          const SizedBox(height: 10,),
          const Padding(padding: EdgeInsets.all(5),
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
          const SizedBox(height: 10,),
          const Padding(
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
          const SizedBox(height: 10,),
          const PasswordField(
            // controller: , // Optional: Pass a TextEditingController if needed
            labelText: 'Enter your password', // Optional: Customize the label text
          ),
          const SizedBox(height: 10,),


        ],),),
      ),
    );
  }
}