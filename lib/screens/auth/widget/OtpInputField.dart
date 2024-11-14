


import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInputField extends StatelessWidget{
  final TextDirection textDirection;
  final int length;
  final Function(String)? onCompleted;
  final Function(String)? onChanged;
  final PinTheme? defaultPinTheme;
  final PinTheme? focusedPinTheme;
  final PinTheme? submittedPinTheme;
  final PinTheme? errorPinTheme;
  final FormFieldValidator<String>? validator;
  final Widget? cursor;
  final double spacing;

  const OtpInputField({
    Key? key,
    this.textDirection = TextDirection.ltr,
    this.length = 4,
    required this.defaultPinTheme,
    this.focusedPinTheme,
    this.submittedPinTheme,
    this.errorPinTheme,
    this.onCompleted,
    this.onChanged,
    this.validator,
    this.cursor,
    this.spacing = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(textDirection:textDirection,
        child: Pinput(length: length, separatorBuilder: (index)=>const SizedBox(width: 20,),
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      defaultPinTheme: defaultPinTheme,
          onCompleted: onCompleted,
          onChanged: onChanged,
          // onCompleted: (pin){debugPrint('onCompletedd $pin'); },
      // onChanged: (value) {debugPrint('onChanged: $value'); },
      focusedPinTheme:focusedPinTheme ?? defaultPinTheme,
      submittedPinTheme: submittedPinTheme??defaultPinTheme,
          errorPinTheme: errorPinTheme ?? defaultPinTheme,
          validator: validator,



      cursor:cursor?? Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 9),
            width: 22,
            height: 1,
            color:defaultPinTheme!.decoration?.border?.top.color ??
                Colors.black,
          ),
        ],
      ),
    ));
  }


}