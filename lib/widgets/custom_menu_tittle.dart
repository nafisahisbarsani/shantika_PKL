import 'package:flutter/material.dart';
import 'app_style.dart';

class MenuTitle extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color lineColor;
  final double lineWidth;
  final double lineHeight;
  final EdgeInsetsGeometry padding;
  final double spacing;

  const MenuTitle({
    super.key,
    required this.text,
    this.textStyle,
    this.lineColor = AppStyle.primary1,
    this.lineWidth = 4,
    this.lineHeight = 22,
    this.padding = const EdgeInsets.only(bottom: AppStyle.paddingM),
    this.spacing = AppStyle.spaceS,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: lineWidth,
              height: lineHeight,
              decoration: BoxDecoration(
                color: lineColor,
              ),
            ),
            SizedBox(width: spacing),
            Expanded(
              child: Text(
                text,
                style: textStyle ?? AppStyle.heading2(color: AppStyle.black500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}