import 'package:bookly_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  CustomTextWidget({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w600,
    required this.fontSize,
    this.color= Colors.white,
        this.textAlign ,

  });
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  Color? color;
  TextAlign? textAlign ;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,

      ),
    );
  }
}

class CustomTextFontFamily extends StatelessWidget {
  CustomTextFontFamily({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w600,
    required this.fontSize,
    this.fontStyle,
    this.textAlign = TextAlign.center,
  });
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  FontStyle? fontStyle;
  TextAlign textAlign ;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: Colors.white,
        fontStyle: fontStyle,
        fontFamily: kGtSectraFine, // Use the custom font family
      ),
    );
  }
}
