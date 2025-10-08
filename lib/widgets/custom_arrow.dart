import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'app_style.dart';

class CustomArrow extends StatelessWidget {
  final String? title;
  final VoidCallback? onBack;
  final Color iconColor;
  final Color textColor;
  final Widget? suffixIcon;

  const CustomArrow({
    Key? key,
    this.title,
    this.onBack,
    this.iconColor = AppStyle.black500,
    this.textColor = AppStyle.black500,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppStyle.paddingL,
        top: AppStyle.paddingXXXL,
        right: AppStyle.paddingXXL,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: onBack ?? () => Get.back(),
                icon: Icon(
                  Icons.arrow_back,
                  color: iconColor,
                  size: AppStyle.iconL,
                ),
              ),
              if (title != null) ...[
                SizedBox(width: AppStyle.spaceXS),
                Text(title!, style: AppStyle.heading1(color: textColor)),
              ],
            ],
          ),
          if (suffixIcon != null) suffixIcon!,
        ],
      ),
    );
  }
}
