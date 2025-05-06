import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final bool isPasswordField;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.suffixIcon,
    required this.isPasswordField,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;

    return TextFormField(
      keyboardType: keyboardType,
      obscureText: isPasswordField,
      style: AppTextStyles.semiBold16.copyWith(
        color:
            isDark
                ? colorScheme.onSurface
                : const Color(0xff1F2326), // Text color
      ),
      decoration: InputDecoration(
        suffixIcon: isPasswordField ? suffixIcon : null,
        hintText: hintText,
        hintStyle: AppTextStyles.bold13.copyWith(
          color:
              isDark
                  ? colorScheme.onSurface.withOpacity(0.5)
                  : const Color(0xff949D9E), // Hint text color
        ),
        filled: true,
        fillColor:
            isDark
                ? colorScheme.surface
                : const Color(0xffF9FAFA), // Background color
        border: buildBorder(
          isDark
              ? colorScheme.onSurface.withOpacity(0.2)
              : const Color(0xffE6E9EA),
        ), // Border color
        focusedBorder: buildBorder(colorScheme.primary), // Focused border color
        enabledBorder: buildBorder(
          isDark
              ? colorScheme.onSurface.withOpacity(0.1)
              : const Color(0xffE6E9EA),
        ), // Enabled border color
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? borderColor]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: borderColor ?? const Color(0xffE6E9EA)),
    );
  }
}
