import 'package:flutter/material.dart';

import 'app_style.dart';

class CustomCircleItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  const CustomCircleItem({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    this.backgroundColor = AppStyle.primary2,
    this.iconColor =AppStyle.background,
    this.size = AppStyle.iconXXXL,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor, size: AppStyle.iconL),
          ),
          SizedBox(height: AppStyle.spaceS),
          SizedBox(
            width: size + 12,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: AppStyle.paragraph1(color: AppStyle.black500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
