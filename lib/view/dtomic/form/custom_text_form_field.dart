import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants/app_colos.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.keyboardType,
    this.controller,
    this.obscureText = false,
    this.hintText,
    this.fontSize,
    this.fontWeight,
    this.color = Colors.grey,
    this.borderRadius = 15,
    this.borderColor = Colors.transparent,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.inputFormatters,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.notBorder = true,
    this.notLabelText = true,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.initialValue,
    this.labelText,
    this.contentPadding,
  });
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool obscureText;
  final String? hintText;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double borderRadius;
  final Color borderColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool notBorder;
  final bool notLabelText;
  final VoidCallback? onTap;
  final bool readOnly;
  final String? initialValue;
  final String? labelText;

  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleSmall?.copyWith(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        );
    // final borderStyle = OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(borderRadius),
    //   borderSide: BorderSide(color: borderColor),
    // );
    // final errorBorderStyle = OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(borderRadius),
    //   borderSide: const BorderSide(color: Colors.red),
    // );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColos.white,
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText,
        cursorColor: borderColor,
        cursorErrorColor: borderColor,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          hintText: hintText,
          labelText: labelText,
          hintStyle: style,
          labelStyle: style,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        validator: validator,
        onChanged: onChanged,
        onTap: onTap,
        inputFormatters: inputFormatters,
        maxLines: maxLines,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        textDirection: textDirection,
        readOnly: readOnly,
        initialValue: initialValue,
      ),
    );
  }
}
