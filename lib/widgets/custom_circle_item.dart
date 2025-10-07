import 'package:flutter/material.dart';

import 'app_style.dart';

class CustomCircleItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final Color iconColor;
  final double size;

  const CustomCircleItem({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    this.iconColor = AppStyle.background,
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
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xFF292861),
                  Color(0xFF67717A),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Icon(icon, color: iconColor, size: AppStyle.iconL),
          ),
          SizedBox(height: AppStyle.spaceS),
          SizedBox(
            width: size + 12,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: AppStyle.menu1(color: AppStyle.black500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
