import 'package:flutter/material.dart';
import 'app_style.dart';

class CustomCardContainer extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Gradient? gradient;
  final double borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final Color? borderColor;
  final double? borderWidth;
  final VoidCallback? onTap;

  const CustomCardContainer({
    super.key,
    this.child,
    this.padding,
    this.backgroundColor,
    this.gradient,
    this.borderRadius = 16,
    this.border,
    this.boxShadow,
    this.margin,
    this.width,
    this.height,
    this.borderColor,
    this.borderWidth = 1.0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final container = Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding ?? const EdgeInsets.all(AppStyle.paddingL),
      decoration: BoxDecoration(
        color: gradient == null
            ? (backgroundColor ?? AppStyle.background)
            : null,
        gradient: gradient,
        borderRadius: BorderRadius.circular(borderRadius),
        border: border ??
            (borderColor != null
                ? Border.all(color: borderColor!, width: borderWidth!)
                : null),
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

    return onTap != null
        ? GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: container,
    )
        : container;
  }
}
