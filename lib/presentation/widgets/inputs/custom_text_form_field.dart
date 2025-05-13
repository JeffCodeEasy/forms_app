import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Widget? label;
  final String? hintText;
  final String? errorText;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    this.label,
    this.hintText,
    this.errorText,
    this.obscureText = false,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      // borderSide: BorderSide(color: colors.primary),
    );

    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary),
        ),
        errorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800),
        ),

        isDense: true,
        label: label,
        hintText: hintText,
        errorText: errorText,
        focusColor: colors.primary,
      ),
    );
  }
}
