import 'package:flutter/material.dart';

import 'app_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final bool isLoading;
  final Widget? icon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 315,
    this.height = 50,
    this.color = AppStyle.primary2,
    this.textColor = AppStyle.background,
    this.borderColor = Colors.transparent,
    this.isLoading = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: onPressed == null ? AppStyle.black300 : color,
          foregroundColor: textColor,
          fixedSize: Size(width, height),
          padding: EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppStyle.radiusS),
            side: BorderSide(color: borderColor, width: AppStyle.radiusXXS),
          ),
        ),
        child:
            isLoading
                ? const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppStyle.background,
                  ),
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) ...[
                      icon!,
                      SizedBox(width: AppStyle.spaceS),
                    ],
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: AppStyle.caption2(color: textColor) as TextStyle?,
                    ),
                  ],
                ),
      ),
    );
  }
}
