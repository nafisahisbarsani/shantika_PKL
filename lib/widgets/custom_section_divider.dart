import 'package:flutter/material.dart';
import 'app_style.dart';

class CustomSectionDivider extends StatelessWidget {
  final String text;
  final double verticalMargin;
  final double horizontalPadding;
  final double lineHeight;
  final double lineThickness;

  const CustomSectionDivider({
    super.key,
    required this.text,
    this.verticalMargin = AppStyle.spaceL,
    this.horizontalPadding = AppStyle.spaceXXS,
    this.lineHeight = 20,
    this.lineThickness = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: verticalMargin),
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        children: [
          Container(
            width: lineThickness,
            height: lineHeight,
            color: AppStyle.primary1,
          ),
          SizedBox(width: AppStyle.spaceS),
          // Text
          Text(
            text,
            style: AppStyle.heading2(color: AppStyle.black500),
          ),
        ],
      ),
    );
  }
}