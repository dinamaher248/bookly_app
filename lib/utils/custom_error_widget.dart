import 'package:bookly_app/utils/custom_text_widget.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomTextWidget(
        text: errMessage,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.red,
      ),
    );
  }
}
