import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//main Color
Color kPrimaryColor = const Color(0xFFB99540); //0xff56DCC5
Color kSecondaryColor = const Color(0xFF1D71B8); //0xFF171A1F
Color kYellowColor = const Color(0xffE1D773);
Color kBlueColor = const Color(0xff566CDC);
Color kGreenColor = const Color(0xff8BD97B);
Color kPinkColor = const Color(0xffEB819C);

//Secondary Color
Color kDangerColor = const Color(0xffF27D81);
Color kWarningColor = const Color(0xffF6CE7E);
Color kSuccessColor = const Color(0xffC3ED6E);
Color kInfoColor = const Color(0xff60B2F0);

//Gray Color Set
Color kBackgroundColor = const Color(0xFFF8F8F8);
Color kGreyColor = const Color(0xFF9095A1);
Color kWhiteColor = const Color(0xFFFFFFFF);

TextStyle titleTextStyle = GoogleFonts.manrope(
    color: kSecondaryColor, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle whiteTextStyle = GoogleFonts.manrope(
  color: kWhiteColor,
);

TextStyle greyTextStyle = GoogleFonts.manrope(
  color: kGreyColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

const defaultCircular = 20.0;
const defaultMargin = 20.0;
BorderRadiusGeometry kBorderRadius = BorderRadius.circular(10.0);
BoxShadow kShadow = BoxShadow(
    blurRadius: 20.0,
    color: Colors.black.withOpacity(0.2),
    spreadRadius: 2.0,
    offset: const Offset(5, 10));
