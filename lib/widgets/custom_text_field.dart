import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_style.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final bool isObsecure;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final VoidCallback? onTap;
  final InputDecoration? decoration;
  final double width;
  final double height;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    super.key,
    this.labelText,
    required this.isObsecure,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
    this.decoration,
    this.width = 308,
    this.height = 48,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      labelText: labelText,
      labelStyle: GoogleFonts.poppins(color: AppStyle.black500, fontSize: 16),
      floatingLabelStyle: GoogleFonts.poppins(
        color: AppStyle.black500,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppStyle.black500,
          width: AppStyle.spaceXS,
        ),
        borderRadius: BorderRadius.circular(AppStyle.radiusXXL),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppStyle.black500,
          width: AppStyle.spaceXXS,
        ),
        borderRadius: BorderRadius.circular(AppStyle.radiusS),
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
        child: validator != null
            ? TextFormField(
                controller: controller,
                obscureText: isObsecure,
                readOnly: readOnly,
                onTap: onTap,
                style: AppStyle.heading3(color: AppStyle.black500),
                decoration: inputDecoration,
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
                style: AppStyle.heading3(color: AppStyle.black500),
                decoration: inputDecoration,
                onChanged: onChanged,
                keyboardType: keyboardType,
                inputFormatters: inputFormatters,
              ),
      ),
    );
  }
}
