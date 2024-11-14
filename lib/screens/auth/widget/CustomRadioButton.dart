

import 'package:first_app/app_export.dart';
import 'package:flutter/material.dart';

class CustomRadioButton<T> extends StatelessWidget{
final T value;
final T groupValue;
final ValueChanged<T?> onChanged;


const CustomRadioButton({
  super.key,
  required this.value,
  required this.onChanged,
  required this.groupValue
});

@override
Widget build(BuildContext context) {
  int _selectedValue=0;
  return Radio<T>(
    value: value,
    groupValue: groupValue,
    onChanged:onChanged,
    // autofocus: true,
    activeColor: Colors.blue, // Customize as needed);
  );
}
}

