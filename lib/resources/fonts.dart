
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hollow/resources/colors.dart';
class Fonts {

  static TextStyle FONT_H1 = GoogleFonts.karla(fontSize: 32,fontWeight: FontWeight.w500);
  static TextStyle FONT_H2 = GoogleFonts.karla(fontSize: 24,fontWeight: FontWeight.w700);
  static TextStyle FONT_H3 = GoogleFonts.karla(fontSize: 20,fontWeight: FontWeight.w500);
  static TextStyle FONT_H3_WHITE = GoogleFonts.karla(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.white);

  static TextStyle FONT_C1 = GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle FONT_C2 = GoogleFonts.rubik(fontSize: 14, fontWeight: FontWeight.w500);
  static TextStyle FONT_HELP_TEXT = GoogleFonts.rubik(fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle FONT_TEXT_FIELD = GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle FONT_TEXT = GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle FONT_TEXT_SECONDARY = GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w400, color: CustomColors.primaryColorButton);
  static TextStyle FONT_TEXT2 = GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.green,decoration: TextDecoration.underline);
  static TextStyle FONT_TEXT_H2 = GoogleFonts.karla(fontSize: 24, fontWeight: FontWeight.w700,color: Colors.green);

  static TextStyle FONT_TEXT_BUTTONS = GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white);
  static TextStyle FONT_TEXT_BUTTONS_BLUE = GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w500, color: CustomColors.primaryColorButton);
  static TextStyle FONT_TEXT_USERNAME = GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w400, color: CustomColors.usernameColor);
  
  static TextStyle FONT_TEXT_WELCOME = GoogleFonts.karla(fontSize: 24, fontWeight: FontWeight.w700, color: CustomColors.primaryColorButton);
}