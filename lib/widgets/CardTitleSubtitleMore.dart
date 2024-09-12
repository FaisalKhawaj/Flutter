



import 'package:first_app/theme/theme_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTitleSubtitleMore extends StatelessWidget{
  final String title;
  final String subtitle;
  final String actionLabel;
  final VoidCallback onActionPressed;

  const CardTitleSubtitleMore({super.key,
  required this.title,
    required this.subtitle,
    this.actionLabel='Se mer',
    required this.onActionPressed,
  });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title,style:theme.textTheme.titleLarge),
            Text(subtitle,style: theme.textTheme.headlineMedium,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(actionLabel,style:theme.textTheme.headlineMedium ,),
            IconButton( onPressed: onActionPressed, icon: Icon(Icons.chevron_right))
          ],
        )
      ],
    );
  }

}