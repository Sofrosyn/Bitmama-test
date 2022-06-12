import 'package:flutter/material.dart';
import 'package:hollow/resources/dimen.dart';

class WelcomeDialog extends StatelessWidget {
  const WelcomeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        height: Dimensions.DIALOG_HEIGHT,
        padding: const EdgeInsets.only(top: 16.0,bottom: 16, left: 12.0, right: 12.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0))
        ),
      )
      
      ); 
  }
}
