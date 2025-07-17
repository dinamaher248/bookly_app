import 'package:bookly_app/utils/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
    this.color = Colors.white,
    super.key,
    required this.text,
    this.textColor = Colors.black,
    required this.onTap,
  });
  Radius? topLeft;
  Radius? topRight;
  Radius? bottomLeft;
  Radius? bottomRight;
  String text;
  Color? color;
  Color? textColor;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: topLeft ?? Radius.zero,
            topRight: topRight ?? Radius.zero,
            bottomLeft: bottomLeft ?? Radius.zero,
            bottomRight: bottomRight ?? Radius.zero,
          ),
        ),
        child: Center(
          child: CustomTextWidget(
            textAlign: TextAlign.center,
            text: text,
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
