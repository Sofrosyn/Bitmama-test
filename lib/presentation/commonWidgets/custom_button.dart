import 'package:flutter/material.dart';
import 'package:hollow/resources/colors.dart';
import 'package:hollow/resources/dimen.dart';
import 'package:hollow/resources/fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  
  const PrimaryButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColors.primaryColorButton,
          borderRadius: BorderRadius.circular(8)),
      height: Dimensions.BUTTON_HEIGHT,
      child: Center(
          child: Text(
        text,
        style: Fonts.FONT_TEXT_BUTTONS,
      )),
    );
  }
}


class SecondaryButton extends StatelessWidget {
  final String text;
  
  const SecondaryButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.primaryColorButton),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      height: Dimensions.BUTTON_HEIGHT,
      child: Center(
          child: Text(
        text,
        style: Fonts.FONT_TEXT_SECONDARY,
      )),
    );
  }
}
