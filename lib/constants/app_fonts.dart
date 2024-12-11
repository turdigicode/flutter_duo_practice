import 'package:flutter/material.dart';

//must be deleted later
const String _fontFamily = "Comfortaa";

class AppFonts{

  static const String fontFamily = "Comfortaa";

  static TextStyle bold = const TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w700);

  static TextStyle semiBold = const TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w600);

  static TextStyle medium = const TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w500);

  static TextStyle regular = const TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w400);

  static TextStyle light = const TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w200);
}