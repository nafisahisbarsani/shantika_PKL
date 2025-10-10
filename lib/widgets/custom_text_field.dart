import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_style.dart';

class CustomTextField extends StatelessWidget {
  final String? title;
  final String? labelText;
  final String? hintText;
  final bool isObsecure;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final VoidCallback? onTap;
  final InputDecoration? decoration;
  final double? width;
  final double height;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? titleColor;
  final Color? hintColor;
  final Color? textColor;
  final double borderRadius;

  const CustomTextField({
    super.key,
    this.title,
    this.labelText,
    this.hintText,
    required this.isObsecure,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
    this.decoration,
    this.width,
    this.height = 48,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.borderColor,
    this.focusedBorderColor,
    this.titleColor,
    this.hintColor,
    this.textColor,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      labelText: labelText,
      hintText: hintText,
      labelStyle: GoogleFonts.poppins(
        color: hintColor ?? AppStyle.black400,
        fontSize: 14,
      ),
      hintStyle: GoogleFonts.poppins(
        color: hintColor ?? AppStyle.black400,
        fontSize: 14,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? AppStyle.black300,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: focusedBorderColor ?? AppStyle.primary1,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? AppStyle.black300,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      prefixIcon: prefixIcon,
      prefixIconColor: AppStyle.black500,
      suffixIcon: suffixIcon,
      suffixIconColor: AppStyle.black500,
      contentPadding: EdgeInsets.symmetric(
        vertical: height / 3,
        horizontal: 16,
      ),
    );

    return Center(
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null && title!.isNotEmpty) ...[
              Text(
                title!,
                style: AppStyle.heading3(color: titleColor ?? AppStyle.black500),
              ),
              const SizedBox(height: 6),
            ],
            validator != null
                ? TextFormField(
              controller: controller,
              obscureText: isObsecure,
              readOnly: readOnly,
              onTap: onTap,
              style: AppStyle.heading3(color: textColor ?? AppStyle.black500),
              decoration: decoration ?? inputDecoration,
              onChanged: onChanged,
              validator: validator,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
            )
                : TextField(
              controller: controller,
              obscureText: isObsecure,
              readOnly: readOnly,
              onTap: onTap,
              style: AppStyle.heading3(color: textColor ?? AppStyle.black500),
              decoration: decoration ?? inputDecoration,
              onChanged: onChanged,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
            ),
          ],
        ),
      ),
    );
  }
}