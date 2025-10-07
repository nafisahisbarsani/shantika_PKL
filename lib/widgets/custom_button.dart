import 'package:flutter/material.dart';
import 'app_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final bool isLoading;
  final Widget? icon;
  final TextStyle? textStyle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.color,
    this.textColor,
    this.borderColor,
    this.isLoading = false,
    this.icon,
    this.textStyle,
    this.fontSize,
    this.fontWeight,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: onPressed == null
            ? AppStyle.black300
            : color ?? AppStyle.primary2,
        foregroundColor: textColor ?? AppStyle.background,
        minimumSize: Size.zero,
        fixedSize: width != null || height != null
            ? Size(width ?? double.infinity, height ?? 50)
            : null,
        padding: padding ?? const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? AppStyle.radiusS),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: AppStyle.radiusXXS,
          ),
        ),
      ),
      child: isLoading
          ? const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
          AppStyle.background,
        ),
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon!,
            SizedBox(width: AppStyle.spaceS),
          ],
          Text(
            text,
            textAlign: TextAlign.center,
            style: textStyle?.copyWith(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: textColor,
            ) ??
                AppStyle.caption1(
                  color: textColor ?? AppStyle.background,
                ).copyWith(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
          ),
        ],
      ),
    );
  }
}