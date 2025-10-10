import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_style.dart';

class CustomToggleSwitch extends StatelessWidget {
  final RxBool value;
  final ValueChanged<bool>? onChanged;

  const CustomToggleSwitch({
    Key? key,
    required this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: () {
          value.value = !value.value;
          onChanged?.call(value.value);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 40,
          height: 22,
          padding: const EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            color: value.value ? AppStyle.primary2 : AppStyle.black300,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Align(
            alignment:
            value.value ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: 16,
              height: 16,
              decoration: const ShapeDecoration(
                color: AppStyle.background,
                shape: OvalBorder(),
              ),
            ),
          ),
        ),
      );
    });
  }
}
