import 'package:flutter/material.dart';
import 'app_style.dart';

class CustomCardContainer extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final double borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;

  const CustomCardContainer({
    super.key,
    this.child,
    this.padding,
    this.backgroundColor,
    this.borderRadius = 16,
    this.border,
    this.boxShadow,
    this.margin,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding ?? const EdgeInsets.all(AppStyle.paddingL),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppStyle.background,
        borderRadius: BorderRadius.circular(borderRadius),
        border: border,
        boxShadow: boxShadow ??
            [
              BoxShadow(
                color: AppStyle.black200.withOpacity(0.3),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
      ),
      child: child,
    );
  }
}
