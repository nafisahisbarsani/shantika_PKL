import 'package:flutter/material.dart';

import 'app_style.dart';

class CustomInputRow extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;
  final VoidCallback? onTap;

  const CustomInputRow({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppStyle.caption1(color: AppStyle.black500)),
        const SizedBox(height: AppStyle.spaceXS),
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppStyle.radiusS),
              border: Border.all(color: AppStyle.black200),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: AppStyle.paddingM,
              vertical: AppStyle.paddingS,
            ),
            child: Row(
              children: [
                Icon(icon, color: AppStyle.black200, size: AppStyle.iconM),
                const SizedBox(width: AppStyle.spaceS),
                Expanded(
                  child: Text(
                    hint,
                    style: AppStyle.caption2(color: AppStyle.black200),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
